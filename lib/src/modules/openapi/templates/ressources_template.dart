import 'package:bot/src/cli/shell.dart';
import 'package:bot/src/commons/templates.dart';
import 'package:bot/src/modules/openapi/templates/templates.dart';
import 'package:bot/src/utils/utils.dart';
import 'package:mason/mason.dart' show MasonBundle;
import 'package:universal_io/io.dart';

abstract class RessourcesTemplate extends Template {
  RessourcesTemplate({required MasonBundle bundle})
      : super(
          name: 'ressource',
          bundle: bundle,
          help: 'Generate Dart ressources models.',
        );

  @override
  Future<void> onGenerateComplete(Logger logger, Directory outputDir) async {
    await Dart.format(cwd: outputDir.absolute.path);
  }
}

class ModelsTemplate extends RessourcesTemplate {
  ModelsTemplate() : super(bundle: ressourcesBundle);
}

class FreezedTemplate extends RessourcesTemplate {
  FreezedTemplate() : super(bundle: freezedBundle);

  @override
  Future<void> onGenerateComplete(Logger logger, Directory outputDir) async {
    // await Dart.generate();
    await super.onGenerateComplete(logger, outputDir);
  }
}
