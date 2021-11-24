import 'package:path/path.dart' as p;
import 'package:universal_io/io.dart';

/// {@template shell}
/// Abstraction for running commands via command-line.
/// {@endtemplate}
class Shell {
  /// Runs the specified [cmd] with the provided [args].
  static Future<ProcessResult> run(
    String cmd,
    List<String> args, {
    bool throwOnError = true,
    String? workingDirectory,
  }) async {
    final result = await Process.run(
      cmd,
      args,
      workingDirectory: workingDirectory,
      runInShell: true,
    );

    if (throwOnError) {
      _throwIfProcessFailed(result, cmd, args);
    }
    return result;
  }

  /// Runs the specified command by [run] where test match.
  static Iterable<Future<ProcessResult>> runWhere({
    required Future<ProcessResult> Function(FileSystemEntity) run,
    required bool Function(FileSystemEntity) where,
    String cwd = '.',
  }) {
    return Directory(cwd).listSync(recursive: true).where(where).map(run);
  }

  static void _throwIfProcessFailed(
    ProcessResult result,
    String process,
    List<String> args,
  ) {
    if (result.exitCode != 0) {
      final values = {
        'Standard out': result.stdout.toString().trim(),
        'Standard error': result.stderr.toString().trim()
      }..removeWhere((k, v) => v.isEmpty);

      var message = 'Unknown error';
      if (values.isNotEmpty) {
        message = values.entries.map((e) => '${e.key}\n${e.value}').join('\n');
      }

      throw ProcessException(process, args, message, result.exitCode);
    }
  }
}

final _ignoredDirectories = RegExp('example|test|assets|.dart_tool|build');

/// Return true if the [entity] is pubspec.yaml file.
bool isPubspec(FileSystemEntity entity) {
  if (entity.path.contains(_ignoredDirectories)) return false;
  if (entity is! File) return false;
  return p.basename(entity.path) == 'pubspec.yaml';
}
