import 'dart:io';

import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:bot/src/utils/utils.dart';

abstract class BotCommand extends Command<int> {
  BotCommand({Logger? logger}) : _logger = logger ?? Logger();

  final Logger _logger;
  Logger get logger => _logger;

  ArgResults get args => argResults!;

  Directory get outputDirectory {
    final rest = args.rest;
    _validateOutputDirectoryArg(rest);
    return Directory(rest.first);
  }

  void _validateOutputDirectoryArg(List<String> args) {
    if (args.isEmpty) {
      throw UsageException('The output directory is not specified.', usage);
    }

    if (args.length > 1) {
      throw UsageException('Multiple output directories specified.', usage);
    }
  }
}
