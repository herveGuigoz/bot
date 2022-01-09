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
    final tag = await findMostRecentTag();

    final result = await Shell.run(
      'git',
      ['log', '--pretty=format:%H;%s;', if (tag != null) '$tag..HEAD'],
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

  /// List local tags.
  static Future<List<String>> listTags() async {
    final result = await Shell.run(
      'git',
      ['tag', '-l', '--sort=-v:refname'],
    );
    final response = result.stdout as String;
    final lines = _lineSplitter.convert(response).map((l) => l.sanitize);

    return lines.toList();
  }

  /// Returns the latest tag from the current branch
  static Future<String?> findMostRecentTag() async {
    final tags = await listTags();

    if (tags.isNotEmpty) return tags.first;
  }

  /// Create new tag
  static Future<void> createTag(Version version) async {
    await Shell.run('git', ['tag', '-a', version.tag, '-m', '$version']);
  }

  /// Push the latest tag to the remote
  static Future<void> pushTagToRemote() async {
    final tag = await findMostRecentTag();
    if (tag != null) {
      await Shell.run('git', ['push', 'origin', tag]);
    }
  }
}
