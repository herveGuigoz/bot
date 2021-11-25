import 'package:args/command_runner.dart';
import 'package:bot/src/models/models.dart';
import 'package:bot/src/services/services.dart';
import 'package:bot/src/utils/utils.dart';
import 'package:io/io.dart';
import 'package:path/path.dart' as path;
import 'package:universal_io/io.dart';

/// {@template release_command}
/// `bot release` command.
/// {@endtemplate}
class ReleaseCommand extends Command<int> {
  /// {@macro release_command}
  ReleaseCommand({
    Logger? logger,
  }) : _logger = logger ?? Logger() {
    argParser
      ..addOption(
        'version',
        abbr: 'v',
        help: 'Define the next release number',
      )
      ..addOption(
        'path',
        abbr: 'p',
        help: 'Define the path to the project',
      )
      ..addOption(
        'force',
        abbr: 'f',
        help: 'Force updates',
        defaultsTo: 'false',
      )
      ..addOption(
        'commit',
        help: 'Commit changes',
        defaultsTo: 'true',
      );
  }

  final Logger _logger;

  @override
  String get description => 'Release the next version';

  @override
  String get name => 'release';

  /// Return arg's `commit` value. Default to true.
  bool get isCommitRequested {
    return (argResults?['commit'] as String? ?? 'true').toBool();
  }

  /// Return arg's `force` value. Default to false.
  bool get isForced {
    return (argResults?['force'] as String? ?? 'false').toBool();
  }

  /// Read project path from command line
  String get targetPath {
    final target = argResults?['path'] as String? ?? '.';
    return path.normalize(Directory(target).absolute.path);
  }

  /// Read current version from Pubspec
  Version get currentVersion {
    return Pubspec.readVersion(targetPath);
  }

  /// Read next version from args or Pubspec
  Version get targetVersion {
    final version = argResults?['version'] as String?;
    if (version != null) {
      return Version.fromString(version);
    }
    return currentVersion.increment();
  }

  /// Get list of commits since current version
  Future<List<Commit>> get commitsSinceCurrentVersion async {
    final commits = await Git.findCommitsSinceLastTag();
    if (commits.isEmpty) {
      throw CommitsNotFoundException();
    }
    return commits;
  }

  @override
  Future<int> run() async {
    /// Assert current git directory do not contains indexed files.
    if (await Git.hasDirtyIndex()) {
      throw GitDirtyIndexException();
    }

    if (!isForced) {
      await validateNextVersion(targetVersion);
    }

    if (!_logger.answerIsYes('Release version $targetVersion ? (y/n) ')) {
      return ExitCode.success.code;
    }

    await rewriteFiles(targetVersion);

    if (isCommitRequested) {
      await commitChanges();
    }

    return ExitCode.success.code;
  }

  /// Assert that the next version is unique and not already used
  Future<void> validateNextVersion(Version target) async {
    final current = currentVersion;

    /// Assert build number is unique
    if (current.build != null && current.build! >= (target.build ?? 0)) {
      throw BuildNumberException(currentVersion, target);
    }

    /// Check for regression
    if (target <= current) {
      throw RegressionException(currentVersion, target);
    }
  }

  /// Rewrite pubspec, env and changelog files.
  Future<void> rewriteFiles(Version version) async {
    final process = _logger.progress('Overriding files');

    try {
      /// Retrieve last commits list and assert it is not empty.
      final commits = await commitsSinceCurrentVersion;

      /// Override version number in pubspec.dart file
      Pubspec.write(version, targetPath);

      /// Override version number in lib/version.dart file
      Env.write(version, targetPath);

      /// Update CHANGELOG.md with all commits since current version
      Changelog.write(version, commits, targetPath);

      process('Updated $pubspecPath, $envPath and $changelogPath files.');
    } catch (_) {
      process();
      rethrow;
    }
  }

  /// Commit all changes in the working directory
  Future<void> commitChanges() async {
    final process = _logger.progress('Commiting changes');

    try {
      await Git.commitChanges(targetVersion);
      process('Commited changes.');
    } catch (_) {
      process();
      rethrow;
    }
  }
}

/// {@template git_dirty_index_exception}
/// Thrown when git index is dirty.
/// {@endtemplate}
class GitDirtyIndexException implements BotException {
  @override
  ExitCode get exitCode => ExitCode.usage;

  @override
  String get message {
    return 'This script needs to run against committed code only. '
        'Please commit or stash you changes.';
  }
}

/// {@template build_number_exception}
/// Exception thrown when build number is not unique.
/// {@endtemplate}
class BuildNumberException implements BotException {
  /// {@macro build_number_exception}
  BuildNumberException(this.target, this.current);

  /// The next version to release
  final Version current;

  /// The current version
  final Version target;

  @override
  ExitCode get exitCode => ExitCode.usage;

  @override
  String get message => 'Invalid build [${target.build}]: '
      'must be higher than previous [${current.build}]';
}

/// {@template regression_exception}
/// Exception thrown when the next version is not higher than the current one.
/// {@endtemplate}
class RegressionException implements BotException {
  /// {@macro regression_exception}
  RegressionException(this.target, this.current);

  /// Next version
  final Version current;

  /// Current version
  final Version target;

  @override
  ExitCode get exitCode => ExitCode.usage;

  @override
  String get message {
    return 'Invalid version [$target]: must be higher than $current';
  }
}

/// {@template commits_not_found_exception}
/// Exception thrown when no commits are found since the last tag.
/// {@endtemplate}
class CommitsNotFoundException implements BotException {
  /// {@macro commits_not_found_exception}
  CommitsNotFoundException();

  @override
  ExitCode get exitCode => ExitCode.config;

  @override
  String get message {
    return 'Could not find commits since last tag in working directory '
        'Please ensure that your working directory is synced with Github: '
        'git rebase origin/master';
  }
}
