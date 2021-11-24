import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:bot/src/models/models.dart';
import 'package:bot/src/services/services.dart';
import 'package:bot/src/utils/utils.dart';
import 'package:io/io.dart';
import 'package:path/path.dart' as path;

/// {@template tag_command}
/// `bot tag` command.
/// {@endtemplate}
class TagCommand extends Command<int> {
  /// {@macro tag_command}
  TagCommand({
    Logger? logger,
  }) : _logger = logger ?? Logger() {
    argParser.addOption(
      'path',
      abbr: 'p',
      help: 'Define the path to the project',
    );
  }

  final Logger _logger;

  @override
  String get description => 'Create and push new tag';

  @override
  String get name => 'tag';

  /// Read project path from command line
  String get targetPath {
    final target = argResults!['path'] as String? ?? '.';
    return path.normalize(Directory(target).absolute.path);
  }

  @override
  Future<int> run() async {
    await assertCurrentBranchIsMaster();

    final currentVersion = Pubspec.readVersion(targetPath);
    await assertTagDoNotExist(currentVersion);

    final process = _logger.progress('Tagging ${currentVersion.tag}');

    try {
      await Git.createTag(currentVersion);
      await Git.pushTagToRemote();
      process('Tagged version ${currentVersion.tag}');
    } catch (_) {
      process();
      rethrow;
    }

    return ExitCode.success.code;
  }

  /// Check if current branch name is master.
  Future<void> assertCurrentBranchIsMaster() async {
    final currentBranch = await Git.getCurrentBranch();
    if (currentBranch != 'master') {
      throw GitBranchException();
    }
  }

  /// Check if tag for [version] already exist.
  Future<void> assertTagDoNotExist(Version version) async {
    final currentTag = await Git.findMostRecentTag();

    if (currentTag == version.tag) {
      throw GitTagException(currentTag);
    }
  }
}

/// {@template git_branch_exception}
/// Exception thrown when current branch is not master.
/// {@endtemplate}
class GitBranchException implements BotException {
  @override
  ExitCode get exitCode => ExitCode.config;

  @override
  String get message => 'You must be on master branch to create a tag';
}

/// {@template git_tag_exception}
/// Exception thrown when tag already exist.
/// {@endtemplate}
class GitTagException implements BotException {
  /// {@macro git_tag_exception}
  GitTagException(this.tag);

  /// Tag name.
  final String tag;

  @override
  ExitCode get exitCode => ExitCode.config;

  @override
  String get message => 'Tag $tag already exist';
}
