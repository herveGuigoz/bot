import 'dart:convert';
import 'dart:io';

import 'package:bot/src/modules/openapi/parser/core/core.dart';
import 'package:bot/src/modules/openapi/parser/openapi/openapi.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

/// Parse api specification.
abstract class ApiDocParser {
  factory ApiDocParser.openapi() = OpenApiDocParser;

  Future<Api> parse(String entrypointURL);
}

/// Parse OpenApi specification.
class OpenApiDocParser with NetworkOpenApiMixin implements ApiDocParser {
  /// Parses OpenAPI specification and returns a [Api] object.
  @override
  Future<Api> parse(String entrypointURL) async {
    final document = await fetchDocument(entrypointURL);
    final ressources = <ApiRessource>[];

    for (final path in document.ressourcesPaths) {
      // Retrieve the PathItem for this ressource
      final currentPathItem = document.paths[path];
      final tag = currentPathItem?.firstOperation?.tags?[0];
      // if tag is not defined in shemas definitions, skip this ressource
      if (tag != null && document.components.schemas[tag] != null) {
        ressources.add(getRessourceFromTag(document, tag));
      }
    }

    return Api(
      title: document.info?.title,
      ressources: ressources,
    );
  }

  /// Convert the OpenAPI Schema to a [ApiRessource]
  static ApiRessource getRessourceFromTag(OpenAPI document, String tag) {
    // Retrieve the properties for this ressource
    final schema = document.components.schemas[tag];
    if (schema?.properties?.isEmpty ?? true) {
      throw Exception('No properties found for tag $tag');
    }

    // Parse the properties
    final requiredFields = schema!.required ?? [];

    final fields = <ApiField>[];

    for (final property in schema.properties!.entries) {
      // todo add read or write only on ApiField
      final field = property.value.map(
        (value) => ApiField(
          name: property.key,
          type: value.asDartType,
          description: value.description,
          required: requiredFields.contains(property.key),
          readable: !(value.writeOnly ?? false),
          writable: !(value.readOnly ?? false),
        ),
        ref: (value) {
          final tag = value.ref.replaceFirst('#/components/schemas/', '');
          return ApiField(
            name: property.key,
            type: tag,
            description: value.description,
            reference: getRessourceFromTag(document, tag),
            required: requiredFields.contains(property.key),
          );
        },
      );

      fields.add(field);
    }

    return ApiRessource(
      name: tag.capitalize(),
      description: schema.description,
      url: 'url',
      fields: fields,
    );
  }
}

extension on String {
  String capitalize() {
    return isEmpty ? this : (this[0].toUpperCase() + substring(1));
  }
}

/// Fetch the openapi documentation from the entrypoint
mixin NetworkOpenApiMixin {
  Future<http.Response> _get(Uri uri) {
    return HttpOverrides.runWithHttpOverrides(
      () => http.get(uri, headers: {'Accept': 'application/json'}),
      HandshakeOverride(),
    );
  }

  @protected
  Future<OpenAPI> fetchDocument(String entrypointURL) async {
    final response = await _get(Uri.parse(entrypointURL));

    if (response.statusCode != 200) throw RequestFailure();

    return _decodeOpenAPIDocumentation(response.body);
  }

  OpenAPI _decodeOpenAPIDocumentation(String body) {
    try {
      final json = jsonDecode(body) as Map<String, dynamic>;

      if (json.isEmpty) throw RequestFailure();

      return OpenApiCodecs.decode<OpenAPI>(json);
    } on Exception catch (_) {
      throw RequestFailure();
    }
  }
}

class RequestFailure implements Exception {}

/// Accept secure connection with bad certifiacte
class HandshakeOverride extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (cert, host, port) => true;
  }
}
