import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:universal_io/io.dart';

part 'models.dart';
part 'openapi.freezed.dart';
part 'openapi.g.dart';
part 'parser.dart';
part 'codecs.dart';

/// {@template openapi_parser}
/// Parses OpenAPI specification and returns a [OpenAPI] object.
/// {@endtemplate}
class ApiParser {
  /// {@macro openapi_parser}
  const ApiParser._();

  /// Parses OpenAPI specification from json file.
  static OpenAPI openapi(Map<String, dynamic> json) {
    return OpenApiCodecs.decode<OpenAPI>(json);
  }
}
