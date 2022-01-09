import 'dart:io';

import 'package:bot/src/commons/templates.dart';
import 'package:bot/src/modules/create/module_bundle.dart';
import 'package:bot/src/utils/utils.dart';

class ModuleTemplate extends Template {
  ModuleTemplate()
      : super(
          name: 'module',
          bundle: moduleBundle,
          help: 'Generate Dart module.',
        );

  @override
  Future<void> onGenerateComplete(Logger logger, Directory outputDir) async {
    // todo: Flutter format
  }
}
