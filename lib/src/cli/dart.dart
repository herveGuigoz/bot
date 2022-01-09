part of 'shell.dart';

/// Dart CLI
class Dart {
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
}
