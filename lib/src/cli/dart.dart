part of 'shell.dart';

/// Dart CLI
class Dart {
  /// Determine whether dart is installed.
  static Future<bool> installed() async {
    try {
      await Shell.run('dart', ['--version']);
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Format Dart source code (`dart format`).
  static Future<void> format({String cwd = '.'}) async {
    try {
      await Shell.run('dart', ['format', '.'], workingDirectory: cwd);
    } catch (_) {}
  }

  /// Generate files `dart run build_runner build --delete-conflicting-outputs`.
  static Future<void> generate({String cwd = '.'}) async {
    try {
      await Shell.run(
        'dart',
        ['run', 'build_runner', '--delete-conflicting-outputs'],
        workingDirectory: cwd,
      );
    } catch (_) {}
  }

  /// Apply all fixes (`dart fix --apply`).
  static Future<void> fix({
    String cwd = '.',
    bool recursive = false,
  }) async {
    if (!recursive) {
      final pubspec = File(p.join(cwd, 'pubspec.yaml'));
      if (!pubspec.existsSync()) throw PubspecNotFound();

      await Shell.run('dart', ['fix', '--apply'], workingDirectory: cwd);
      return;
    }

    final processes = Shell.runWhere(
      run: (entity) => Shell.run(
        'dart',
        ['fix', '--apply'],
        workingDirectory: entity.parent.path,
      ),
      where: isPubspec,
      cwd: cwd,
    );

    if (processes.isEmpty) throw PubspecNotFound();

    await Future.wait(processes);
  }
}
