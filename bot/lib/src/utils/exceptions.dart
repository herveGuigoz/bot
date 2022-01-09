import 'package:io/io.dart';

/// {@template bot_excetion}
/// Exception implementation for cli.
/// {@endtemplate}
abstract class BotException implements Exception {
  /// {@macro bot_excetion}
  BotException(this.message, this.exitCode);

  /// The message to display to the user.
  final String message;

  /// The exit code to use when exiting the program.
  final ExitCode exitCode;

  @override
  String toString() => message;
}

/// {@template file_not_found_exception}
/// Exception thrown when file do not exist in given directory.
/// {@endtemplate}
class FileNotFound implements BotException {
  /// {@macro file_not_found_exception}
  FileNotFound(this.name, this.path);

  /// The name of the file that was not found.
  final String name;

  /// The path to the directory that the file was not found in.
  final String path;

  @override
  ExitCode get exitCode => ExitCode.noInput;

  @override
  String get message => 'Could not find $name in $path';
}
