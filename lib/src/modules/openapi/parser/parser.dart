import 'dart:convert';
import 'dart:io';

import 'package:bot/src/modules/openapi/parser/core/core.dart';
import 'package:bot/src/modules/openapi/parser/openapi/openapi.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

/// Parse api specification.
abstract class ApiDocParser {
  factory ApiDocParser.network(String entrypoint) {
    return OpenApiDocParser(entrypoint, delegate: NetworkOpenApiDelegate());
  }

  factory ApiDocParser.json(String entrypoint) {
    return OpenApiDocParser(entrypoint, delegate: JsonOpenApiDelegate());
  }

  Future<Api> parse({String? authorization});
}

/// Parse OpenApi specification.
class OpenApiDocParser implements ApiDocParser {
  OpenApiDocParser(this.entrypoint, {required this.delegate});

  final OpenApiDelegate delegate;
  final String entrypoint;

  // ************************ V2 **********************************
  /// Parses OpenAPI specification and returns a [Api] object.
  @override
  Future<Api> parse({String? authorization}) async {
    final document = await delegate.fetchDocument(entrypoint, authorization);

    final ressources = getRessources(document);

    return Api(
      title: document.info?.title,
      ressources: ressources,
    );
  }

  static List<ApiRessource> getRessources(OpenAPI document) {
    final ressources = <ApiRessource>[];

    for (final path in document.ressourcesPaths) {
      // Retrieve the PathItem for this ressource
      final currentPathItem = document.paths[path];
      // The name of the ressource
      final tag = currentPathItem?.firstOperation?.tags?[0];
      if (tag == null) continue;
      // The success response
      final response = currentPathItem?.firstOperation?.responses[200];
      if (response is! ResponseObject) continue;
      // the json schema for the success response
      final schema = response.content?['application/json']?.schema;
      if (schema == null) continue;
      final ressource = parseSchema(document, schema, tag);
      if (ressource != null) ressources.add(ressource);
    }

    return ressources;
  }

  static ApiRessource? parseSchema(
    OpenAPI document,
    Schema schema,
    String name,
  ) {
    return schema.map(
      object: (value) {
        if (value.items != null) {
          return parseSchema(document, value.items!, name);
        }
      },
      ref: (value) {
        final tag = value.ref.replaceFirst('#/components/schemas/', '');
        return getRessourceFromTag(document, tag, name);
      },
    );
  }

  /// Convert the OpenAPI Schema to a [ApiRessource]
  static ApiRessource getRessourceFromTag(
    OpenAPI document,
    String tag, [
    String? name,
  ]) {
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
        object: (value) {
          return ApiField(
            name: property.key,
            type: findTypeOfSchema(value),
            description: value.description?.asComments(),
            required: requiredFields.contains(property.key),
            readable: !(value.writeOnly ?? false),
            writable: !(value.readOnly ?? false),
          );
        },
        ref: (value) {
          final tag = value.ref.replaceFirst('#/components/schemas/', '');
          return ApiField(
            name: property.key,
            type: property.key.capitalize(),
            description: value.description,
            reference: getRessourceFromTag(document, tag),
            required: requiredFields.contains(property.key),
          );
        },
      );

      fields.add(field);
    }

    return ApiRessource(
      name: name ?? tag.capitalize(),
      description: schema.description,
      url: 'url',
      fields: fields,
    );
  }

  static String findTypeOfSchema(SchemaObject value) {
    String? fromType(String? type) {
      if (type == 'integer') return 'int';
      if (type == 'number') return 'double';
      if (type == 'boolean') return 'bool';
    }

    String fromReference(String ref) {
      final tag = ref.replaceFirst('#/components/schemas/', '');
      return tag.split(RegExp('[-|_|.]')).first;
    }

    if (fromType(value.type) != null) return fromType(value.type)!;

    if (value.type == 'string') {
      return value.format == 'date' || value.format == 'date-time'
          ? 'DateTime'
          : 'String';
    }

    if (value.type == 'array') {
      return value.items!.map(
        object: (schema) {
          return 'List<${findTypeOfSchema(schema)}>';
        },
        ref: (schema) {
          return 'List<${fromReference(schema.ref)}>';
        },
      );
    }

    if (value.anyOf != null && value.anyOf!.isNotEmpty) {
      return value.anyOf!.first.map(
        object: findTypeOfSchema,
        ref: (schema) => fromReference(schema.ref),
      );
    }

    return 'Object';
  }

  // ************************ V1 **********************************
  /// Parses OpenAPI specification and returns a [Api] object.
  Future<Api> parseRessourcesPaths({String? authorization}) async {
    final document = await delegate.fetchDocument(entrypoint, authorization);

    final ressources = <ApiRessource>[];

    for (final path in document.ressourcesPaths) {
      // Retrieve the PathItem for this ressource
      final currentPathItem = document.paths[path];
      // The name of the ressource
      final tag = currentPathItem?.firstOperation?.tags?[0];
      if (tag == null) continue;

      // if tag is not defined in shemas definitions, skip this ressource
      if (document.components.schemas[tag] != null) {
        ressources.add(getRessourceFromTag(document, tag));
      }
    }

    return Api(
      title: document.info?.title,
      ressources: ressources,
    );
  }
}

abstract class OpenApiDelegate {
  Future<OpenAPI> fetchDocument(String path, [String? authorization]);

  OpenAPI decodeOpenAPIDocumentation(String data) {
    try {
      final json = jsonDecode(data) as Map<String, dynamic>;
      if (json.isEmpty) throw RequestFailure();
      final openApi = OpenApiCodecs.decode<OpenAPI>(json);

      return openApi;
    } on Exception catch (_) {
      throw RequestFailure();
    }
  }
}

/// Load the openapi documentation from the json file
class JsonOpenApiDelegate extends OpenApiDelegate {
  @override
  @protected
  Future<OpenAPI> fetchDocument(String path, [String? authorization]) async {
    final json = File(path).readAsStringSync();
    return decodeOpenAPIDocumentation(json);
  }
}

/// Fetch the openapi documentation from the entrypoint
class NetworkOpenApiDelegate extends OpenApiDelegate {
  @override
  @protected
  Future<OpenAPI> fetchDocument(String path, [String? authorization]) async {
    final response = await _get(
      Uri.parse(path),
      header: authorization != null
          ? <String, String>{'Authorization': authorization}
          : null,
    );

    if (response.statusCode != 200) throw RequestFailure();

    return decodeOpenAPIDocumentation(response.body);
  }

  Future<http.Response> _get(Uri uri, {Map<String, String>? header}) {
    return HttpOverrides.runWithHttpOverrides(
      () => http.get(
        uri,
        headers: {
          'Accept': 'application/json',
          if (header != null) ...header,
        },
      ),
      HandshakeOverride(),
    );
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
