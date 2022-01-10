import 'dart:convert';

import 'package:args/command_runner.dart';
import 'package:bot/src/commands/bot.dart';
import 'package:bot/src/commons/templates.dart';
import 'package:bot/src/modules/openapi/openapi.dart';
import 'package:bot/src/utils/utils.dart';
import 'package:io/io.dart';
import 'package:mason/mason.dart' as m;
import 'package:universal_io/io.dart';

typedef Json = Map<String, dynamic>;

class OpenApiCommand extends BotCommand {
  OpenApiCommand({Logger? logger}) : super(logger: logger) {
    argParser
      ..addOption(
        'output-dir',
        abbr: 'o',
        help: 'Directory where to output the generated files.',
        defaultsTo: '.',
      )
      ..addOption(
        'authorization',
        abbr: 'a',
        help: 'Athorization header to use when calling the API.',
      )
      ..addFlag(
        'freezed',
        abbr: 'f',
        help: 'Generate Freezed class.',
      );
  }

  final parser = ApiDocParser.openapi();

  static final List<Template> _templates = [
    ModelsTemplate(),
    FreezedTemplate(),
  ];

  @override
  String get description {
    return 'Generates Dart models classes from an OpenAPI specification.';
  }

  @override
  String get summary => '$invocation\n$description';

  @override
  String get name => 'openapi';

  @override
  String get invocation => 'bot openapi <openapi-url>';

  @override
  Directory get outputDirectory {
    final directory = args['output-dir'] as String?;
    if (directory == null) {
      throw UsageException('The output directory is not specified.', usage);
    }
    return Directory(directory);
  }

  bool get isFreezed => args['freezed'] as bool;

  String get openapiEndpoint {
    final rest = args.rest;
    _validateOpenapiEndpoint(rest);
    return rest.first;
  }

  void _validateOpenapiEndpoint(List<String> args) {
    if (args.isEmpty) {
      throw UsageException(
        'No url specified for the openapi documentation.',
        usage,
      );
    }

    if (args.length > 1) {
      throw UsageException('Multiple url specified.', usage);
    }
  }

  @override
  Future<int> run() async {
    var process = logger.progress('Loading openApi documentation');
    try {
      final directory = outputDirectory;
      final template = isFreezed ? _templates.last : _templates.first;
      final documentation = await parser.parse(openapiEndpoint);
      process('Loaded openApi documentation.');

      process = logger.progress('Bootstrapping');
      final generator = await m.MasonGenerator.fromBundle(template.bundle);
      await generator.generate(
        m.DirectoryGeneratorTarget(directory),
        vars: jsonDecode(jsonEncode(documentation.toJson())) as Json,
      );

      await template.onGenerateComplete(logger, outputDirectory);
      process('Generated models files.');
    } catch (_) {
      process();
      rethrow;
    }

    return ExitCode.success.code;
  }
}
