// ignore_for_file: avoid_escaping_inner_quotes

import 'dart:io';

import 'package:bot/src/models/models.dart';
import 'package:bot/src/utils/extensions.dart';
import 'package:bot/src/utils/utils.dart';
import 'package:path/path.dart' as p;

/// version file path.
const envPath = 'lib/version.dart';
const _versionPrefix = 'const String version = ';

/// {@template env}
/// A service to manage the version.dart file.
/// {@endtemplate}
class Env {
  /// Override version number in lib/version.dart file.
  static void write(Version version, String cwd) {
    final file = getEnvFile(cwd);

    final content = <String>[
      '// Generated code. Do not modify.',
      '',
      '/// The application version',
      '$_versionPrefix\'$version\';'
    ];

    file.writeAsStringSync(content.joinWithNewLine());
  }

  /// Retrieve or create lib/version.dart file.
  static File getEnvFile(String path) {
    final file = File(p.join(path, envPath))..createSync();

    return file;
  }
}
