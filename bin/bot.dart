import 'dart:io';

import 'package:bot/src/bot.dart';

Future<void> main(List<String> args) async {
  await _flushThenExit(await Bot().run(args));
}

/// Flushes the stdout and stderr streams, then exits the program with the given
/// status code.
Future _flushThenExit(int status) {
  return Future.wait<void>([
    stdout.close(),
    stderr.close(),
  ]).then<void>((_) => exit(status));
}
