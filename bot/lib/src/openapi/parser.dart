part of 'openapi.dart';

class RequestFailure implements Exception {}

class OpenApiParser with NetworkOpenApiMixin {
  OpenApiParser(this.entrypointURL);

  @override
  final Uri entrypointURL;

  OpenAPI? _document;
  Future<OpenAPI> _getDocument() async {
    return _document ??= await _fetchDocument();
  }

  Future<Api> _parseDocument() async {
    final document = await _getDocument();
    final ressources = <ApiRessource>[];

    for (final path in document.getRessourcesPaths()) {
      // Retrieve the PathItem for this ressource
      final currentPathItem = document.paths[path];
      final tag = currentPathItem?.firstOperation?.tags?[0];
      // if tag is not defined in shemas definitions, skip this ressource
      if (tag != null && document.components.schemas[tag] != null) {
        ressources.add(_getRessourceFromTag(tag));
      }
    }

    return Api(
      title: document.info?.title,
      ressources: ressources,
    );
  }

  /// Convert the OpenAPI Schema to a [ApiRessource]
  ApiRessource _getRessourceFromTag(String tag) {
    final api = _document!;

    // Retrieve the properties for this ressource
    final schema = api.components.schemas[tag];
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
            reference: _getRessourceFromTag(tag),
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

/// Fetch the openapi documentation from the entrypoint
mixin NetworkOpenApiMixin {
  Uri get entrypointURL;

  Future<http.Response> _get(Uri uri) => http.get(uri);

  Future<OpenAPI> _fetchDocument() async {
    final response = await _get(entrypointURL);

    if (response.statusCode != HttpStatus.ok) throw RequestFailure();

    return _decodeOpenAPIDocumentation(response.body);
  }

  OpenAPI _decodeOpenAPIDocumentation(String body) {
    try {
      final json = jsonDecode(body) as Map<String, dynamic>;

      if (json.isEmpty) throw RequestFailure();

      return ApiParser.openapi(json);
    } on Exception catch (_) {
      throw RequestFailure();
    }
  }
}

extension StringExtension on String {
  String removeTrailingSlash() {
    if (endsWith('/')) {
      return substring(0, length - 1);
    }
    return this;
  }

  String capitalize() {
    return isEmpty ? this : (this[0].toUpperCase() + substring(1));
  }

  String asDartType() {
    switch (this) {
      case 'integer':
        return 'int';
      case 'number':
        return 'double';
      case 'boolean':
        return 'bool';
      case 'string':
        return 'String';
      default:
        return this;
    }
  }
}

extension on OpenAPI {
  /// Parse the OpenAPI document to retrive the API ressources as List<String>
  List<String> getRessourcesPaths() {
    final ressources = <String>[];

    for (final path in paths.keys) {
      if (path.contains('/{id}') ||
          ressources.contains('/${path.split('/')[1]}')) {
        continue;
      }
      ressources.add(path);
    }

    return ressources;
  }
}

extension on PathItem {
  Operation? get firstOperation {
    final operations = [get, put, post, delete, options, head, patch];
    return operations.firstWhere((operation) => operation != null);
  }
}

extension on SchemaObject {
  String get asDartType {
    if (type == 'array' && items != null) {
      return items!.map(
        (value) => 'List<${value.type?.asDartType()}>',
        ref: (value) => 'List<${value.ref.split('/').last}>',
      );
    }

    if (type == 'string') {
      return format == 'date' || format == 'date-time' ? 'DateTime' : 'String';
    }

    return type?.asDartType() ?? 'dynamic';
  }
}
