import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:bot/src/commands/commands.dart';
import 'package:bot/src/utils/utils.dart';
import 'package:bot/version.dart';
import 'package:io/io.dart';

/// {@template bot}
/// A [CommandRunner] for the bot CLI.
/// {@endtemplate}
class Bot extends CommandRunner<int> {
  /// {@macro bot}
  Bot({
    Logger? logger,
  })  : _logger = logger ?? Logger(),
        super('bot', 'Command Line Interface for Flutter') {
    argParser.addFlag(
      'version',
      abbr: 'v',
      help: 'Reports the version of this bot.',
      negatable: false,
    );
    addCommand(ReleaseCommand(logger: _logger));
    addCommand(TagCommand(logger: _logger));
    addCommand(CreateCommand(logger: _logger));
    addCommand(OpenApiCommand(logger: _logger));
  }

  final Logger _logger;

  @override
  Future<int> run(Iterable<String> args) async {
    try {
      final _argResults = parse(args);
      return await runCommand(_argResults) ?? ExitCode.success.code;
    } on BotException catch (e) {
      _logger.err(e.message);
      return e.exitCode.code;
    } on FormatException catch (e, stackTrace) {
      _logger
        ..err(e.message)
        ..err('$stackTrace')
        ..info('')
        ..info(usage);
      return ExitCode.usage.code;
    } on UsageException catch (e) {
      _logger
        ..err(e.message)
        ..info('')
        ..info(usage);
      return ExitCode.usage.code;
    }
  }

  @override
  Future<int?> runCommand(ArgResults topLevelResults) async {
    if (topLevelResults['version'] == true) {
      _logger.info(version);
      return ExitCode.success.code;
    }

    return super.runCommand(topLevelResults);
  }
}
