import 'dart:io';

import 'package:bot/src/modules/release/models/models.dart';
import 'package:bot/src/utils/utils.dart';
import 'package:path/path.dart' as p;

/// changelog file path.
const changelogPath = 'CHANGELOG.md';
const _kHeader = '# CHANGELOG';

/// {@template changelog}
/// A service that helps to generate changelog.
/// {@endtemplate}
class Changelog {
  /// Update CHANGELOG.md with all [commits].
  static void write(Version version, List<Commit> commits, String cwd) {
    final changelog = _getChangelogFile(cwd);
    final now = DateTime.now();

    final lines = changelog.readAsLinesSync();

    final content = <String>[
      '$_kHeader\n',
      '## ${version.tag}',
      '>${now.ddMMyyyy}\n',
      ...commits.map((commit) => '* ${commit.type}: ${commit.description}'),
      ...lines..removeWhere((line) => line.startsWith(_kHeader)),
    ];

    changelog.writeAsStringSync(content.joinWithNewLine());
  }

  static File _getChangelogFile(String cwd) {
    final changelog = File(p.join(cwd, changelogPath))..createSync();
    return changelog;
  }
}
