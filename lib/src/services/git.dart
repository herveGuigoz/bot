import 'dart:convert';

import 'package:bot/src/models/models.dart';
import 'package:bot/src/services/shell.dart';
import 'package:bot/src/utils/extensions.dart';

const _lineSplitter = LineSplitter();

/// {@template git}
/// A git client.
/// {@endtemplate}
class Git {
  /// Returns true if the current branch is dirty.
  static Future<bool> hasDirtyIndex() async {
    final result = await Shell.run('git', ['status', '--porcelain']);
    final response = result.stdout as String;

    return _lineSplitter.convert(response).map((l) => l.sanitize).isNotEmpty;
  }

  /// Returns the current branch name.
  static Future<String> getCurrentBranch() async {
    final result = await Shell.run(
      'git',
      ['rev-parse', '--abbrev-ref', 'HEAD'],
    );
    final response = result.stdout as String;

    return response.trim();
  }

  /// Returns the commit hash of the most recent commit.
  static Future<String> findMostRecentCommit() async {
    final result = await Shell.run(
      'git',
      ['rev-parse', 'HEAD'],
    );
    final response = result.stdout as String;

    return _lineSplitter.convert(response).map((l) => l.sanitize).first;
  }

  /// Returns the commits since the last tag.
  static Future<List<Commit>> findCommitsSinceLastTag() async {
    final result = await Shell.run(
      'git',
      ['log', '--pretty=format:%H;%s;', '${await findMostRecentTag()}..HEAD'],
    );
    final response = result.stdout as String;
    final lines = _lineSplitter.convert(response).map((l) => l.sanitize);
    final commits = lines.map((line) => Commit.fromString(line)).toList();

    return commits..sort();
  }

  /// Index and commit all changes.
  static Future<void> commitChanges(Version version) async {
    await Shell.run('git', ['add', '-A']);
    await Shell.run('git', ['commit', '-m', '🚀 release: $version']);
  }

  /// Push the current branch to the remote
  static Future<void> pushCommitToRemote() async {
    await Shell.run('git', ['push', 'origin', 'HEAD:master']);
  }

  /// Returns the latest tag from the current branch
  static Future<String> findMostRecentTag() async {
    final result = await Shell.run(
      'git',
      ['describe', '--tags', '--abbrev=0'],
    );
    final response = result.stdout as String;

    final tag = _lineSplitter.convert(response).map((l) => l.sanitize).first;
    return Version.fromString(tag.substring(1)).tag;
  }

  /// Create new tag
  static Future<void> createTag(Version version) async {
    await Shell.run('git', ['tag', '-a', version.tag, '-m', '$version']);
  }

  /// Push the latest tag to the remote
  static Future<void> pushTagToRemote() async {
    await Shell.run('git', ['push', 'origin', (await findMostRecentTag())]);
  }
}
