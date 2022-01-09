import 'package:args/command_runner.dart';
import 'package:bot/src/commands/bot.dart';
import 'package:bot/src/modules/create/module_template.dart';
import 'package:bot/src/utils/utils.dart';
import 'package:io/io.dart';
import 'package:mason/mason.dart' as m;

class CreateCommand extends BotCommand {
  CreateCommand({Logger? logger}) : super(logger: logger) {
    argParser.addOption(
      'name',
      abbr: 'n',
      help: 'The module name. ',
    );
  }

  @override
  String get description => 'Creates a new module in the specified directory.';

  @override
  String get summary => '$invocation\n$description';

  @override
  String get name => 'create';

  @override
  String get invocation => 'bot create -n <name> <output directory>';

  /// Gets the module name.
  /// throw if name is not explicitly specified.
  String get _moduleName {
    final name = args['name'] as String?;
    if (name != null) return name;
    throw UsageException('Missing option name', usage);
  }

  @override
  Future<int> run() async {
    final process = logger.progress('Bootstrapping');
    try {
      final directory = outputDirectory;
      final name = _moduleName;
      final template = ModuleTemplate();
      final generator = await m.MasonGenerator.fromBundle(template.bundle);
      await generator.generate(
        m.DirectoryGeneratorTarget(directory),
        vars: <String, String>{'name': name},
      );
      process('Generated new module $name.');
    } catch (_) {
      process();
      rethrow;
    }

    return ExitCode.success.code;
  }
}
