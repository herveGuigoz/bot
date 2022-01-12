import 'dart:io';

import 'package:bot/src/cli/shell.dart';
import 'package:bot/src/commons/templates.dart';
import 'package:bot/src/modules/create/application/application_bundle.dart';
import 'package:bot/src/utils/utils.dart';

class AppTemplate extends Template {
  AppTemplate()
      : super(
          name: 'app',
          bundle: flutterPackageBundle,
          help: 'Generate new Flutter application.',
        );

  @override
  Future<void> onGenerateComplete(Logger logger, Directory outputDir) async {
    await installFlutter(logger, outputDir);
    await formatDartCode(logger, outputDir);
  }

  Future<void> installFlutter(Logger logger, Directory outputDir) async {
    final isFlutterInstalled = await Flutter.installed();
    if (!isFlutterInstalled) return;
    final progress = logger.progress(
      'Running "flutter packages get" in ${outputDir.path}',
    );
    await Flutter.packagesGet(cwd: outputDir.path);
    progress();
  }

  /// Runs `dart fix --apply` in the [outputDir].
  Future<void> formatDartCode(Logger logger, Directory outputDir) async {
    final isDartInstalled = await Dart.installed();
    if (!isDartInstalled) return;
    final progress = logger.progress(
      'Running "dart fix --apply" in ${outputDir.path}',
    );
    await Dart.fix(cwd: outputDir.path);
    progress();
  }
}
