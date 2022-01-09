import 'package:bot/src/models/version.dart';
import 'package:bot/src/utils/exceptions.dart';
import 'package:bot/src/utils/extensions.dart';
import 'package:io/io.dart';
import 'package:path/path.dart' as p;
import 'package:universal_io/io.dart';

/// Pubspec file path.
const pubspecPath = 'pubspec.yaml';
const _versionPrefix = 'version:';

/// {@template pubspec}
/// A service for read and edit pubspec.yaml file.
/// {@endtemplate}
class Pubspec {
  /// Returns the version of the package.
  static Version readVersion(String cwd) {
    final pubspec = _getPubspecFile(cwd);
    final lines = pubspec.readAsLinesSync();
    if (!lines.any((line) => line.startsWith(_versionPrefix))) {
      throw InvalidPubspec(pubspec.path);
    }
    final line = lines.firstWhere((value) => value.startsWith(_versionPrefix));

    return Version.fromString(line.substring(_versionPrefix.length).trim());
  }

  /// Override version number in pubspec.dart file
  static void write(Version version, String cwd) {
    final pubspec = _getPubspecFile(cwd);
    final lines = pubspec.readAsLinesSync();
    final revisedLines = <String>[];
    final sectionRegExp = RegExp('([a-z]|_)+:');

    for (var line in lines) {
      if (line.startsWith(sectionRegExp) && line.startsWith(_versionPrefix)) {
        line = '$_versionPrefix $version';
      }
      revisedLines.add(line);
    }

    final content = revisedLines.joinWithNewLine();
    pubspec.writeAsStringSync(content);
  }

  static File _getPubspecFile(String cwd) {
    final pubspec = File(p.join(cwd, pubspecPath));
    if (!pubspec.existsSync()) throw FileNotFound(pubspecPath, cwd);
    return pubspec;
  }
}

/// {@template invalid_pubspec}
/// Exception thrown when `version` is missing int the pubspec file.
/// {@endtemplate}
class InvalidPubspec implements BotException {
  /// {@macro invalid_pubspec}
  InvalidPubspec(this.path);

  /// Path to the pubspec file.
  final String path;

  @override
  ExitCode get exitCode => ExitCode.config;

  @override
  String get message => 'Could not resolve version from $path';
}
