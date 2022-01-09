import 'dart:convert';

import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:bot/src/commons/templates.dart';
import 'package:bot/src/modules/openapi/openapi.dart';
import 'package:bot/src/utils/utils.dart';
import 'package:mason/mason.dart' as m;
import 'package:universal_io/io.dart';

typedef Json = Map<String, dynamic>;

class OpenApiCommand extends Command<int> {
  OpenApiCommand({Logger? logger}) : _logger = logger ?? Logger() {
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

  final Logger _logger;

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

  ArgResults get results => argResults!;

  String get openapiEndpoint {
    final rest = results.rest;
    _validateOpenapiEndpoint(rest);
    return rest.first;
  }

  bool get isFreezed => results['freezed'] as bool;

  @override
  Future<int> run() async {
    final outputDirectory = Directory(results['output-dir'] as String);
    final template = isFreezed ? _templates.last : _templates.first;

    final process = _logger.progress('Loading openApi documentation');
    try {
      final documentation = await parser.parse(openapiEndpoint);
      process('Loaded openApi documentation.');

      final generator = await m.MasonGenerator.fromBundle(template.bundle);
      await generator.generate(
        m.DirectoryGeneratorTarget(outputDirectory),
        vars: jsonDecode(jsonEncode(documentation.toJson())) as Json,
      );

      await template.onGenerateComplete(_logger, outputDirectory);
    } catch (_) {
      process();
      rethrow;
    }

    return 0;
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
}
