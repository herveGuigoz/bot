import 'package:args/command_runner.dart';
import 'package:bot/src/commands/bot.dart';
import 'package:bot/src/commons/templates.dart';
import 'package:bot/src/modules/create/create.dart';
import 'package:bot/src/utils/utils.dart';
import 'package:io/io.dart';
import 'package:mason/mason.dart' as m;
import 'package:path/path.dart' as path;

const _defaultDescription = 'A new flutter application.';

final _templates = <Template>[
  ModuleTemplate(),
  AppTemplate(),
];

final _defaultTemplate = _templates.first;

class CreateCommand extends BotCommand with NamingMixin {
  CreateCommand({Logger? logger}) : super(logger: logger) {
    argParser
      ..addOption(
        'name',
        abbr: 'n',
        help: 'The project name for this new project. '
            'This must be a valid dart package name.',
      )
      ..addOption(
        'org-name',
        help: 'The organization for this new project.',
        defaultsTo: NamingMixin.defaultOrgName,
        aliases: ['org'],
      )
      ..addOption(
        'desc',
        help: 'The description for this new project.',
        defaultsTo: _defaultDescription,
      )
      ..addOption(
        'template',
        abbr: 't',
        help: 'The template used to generate this new project.',
        defaultsTo: _defaultTemplate.name,
        allowed: _templates.map((element) => element.name).toList(),
        allowedHelp: _templates.fold<Map<String, String>>(
          {},
          (previousValue, element) => {
            ...previousValue,
            element.name: element.help,
          },
        ),
      );
  }

  @override
  String get description => 'Create a new project in the specified directory.';

  @override
  String get summary => '$invocation\n$description';

  @override
  String get name => 'create';

  @override
  String get invocation => 'bot create <output directory>';

  Template get _template {
    final templateName = args['template'] as String?;

    return _templates.firstWhere(
      (element) => element.name == templateName,
      orElse: () => _templates.first,
    );
  }

  @override
  Future<int> run() async {
    final process = logger.progress('Bootstrapping');
    try {
      final directory = outputDirectory;
      final projectName = _projectName;
      final orgName = _orgName;
      final template = _template;
      final generator = await m.MasonGenerator.fromBundle(template.bundle);
      final fileCount = await generator.generate(
        m.DirectoryGeneratorTarget(directory),
        vars: <String, String>{
          'name': projectName,
          'org_name': orgName,
          'description': args['desc'] as String? ?? _defaultDescription,
        },
      );
      process('Generated $fileCount file(s)');
      await template.onGenerateComplete(logger, outputDirectory);
    } catch (_) {
      process();
      rethrow;
    }

    return ExitCode.success.code;
  }
}

mixin NamingMixin on BotCommand {
  static const defaultOrgName = 'com.herveguigoz.app';

  final _projectNameRegExp = RegExp('[a-z_][a-z0-9_]*');
  final _orgNameRegExp = RegExp(r'^[a-zA-Z][\w-]*(\.[a-zA-Z][\w-]*)+$');

  /// Gets the project name.
  String get _projectName {
    final name = args['name'] as String? ?? _projectNameFromDirectory;
    if (!_isValidPackageName(name)) {
      throw UsageException('"$name" is not a valid package name.', usage);
    }
    return name;
  }

  String get _projectNameFromDirectory {
    return path.basename(path.normalize(outputDirectory.absolute.path));
  }

  String get _orgName {
    final name = args['org-name'] as String? ?? defaultOrgName;
    if (!_isValidOrgName(name)) {
      throw UsageException('"$name" is not a valid org name.', usage);
    }
    return name;
  }

  bool _isValidPackageName(String name) {
    final match = _projectNameRegExp.matchAsPrefix(name);
    return match != null && match.end == name.length;
  }

  bool _isValidOrgName(String name) {
    return _orgNameRegExp.hasMatch(name);
  }
}
