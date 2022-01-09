import 'package:bot/src/services/shell.dart';

/// Dart CLI
class Dart {
  /// Format Dart source code (`dart format`).
  static Future<void> format({String cwd = '.'}) async {
    try {
      await Shell.run('dart', ['format', '.'], workingDirectory: cwd);
    } catch (_) {}
  }
}
