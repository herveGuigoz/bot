part of 'openapi.dart';

/// Syntax preference
typedef Json = Map<String, dynamic>;

mixin OpenApiCodecs {
  static Map<Type, JsonCodec> get codecs {
    return const {
      Components: ComponentsCodec(),
      Contact: ContactCodec(),
      OpenAPI: OpenAPICodec(),
      Example: ExampleCodec(),
      ExternalDocumentation: ExternalDocumentationCodec(),
      Header: HeaderCodec(),
      Info: InfoCodec(),
      License: LicenseCodec(),
      Link: LinkCodec(),
      MediaType: MediaTypeCodec(),
      Operation: OperationCodec(),
      Parameter: ParameterCodec(),
      PathItem: PathCodec(),
      RequestBody: RequestBodyCodec(),
      Response: ResponseCodec(),
      SecurityScheme: SecuritySchemeCodec(),
      Schema: SchemaCodec(),
    };
  }

  static T decode<T>(Json json) => _find<T>().fromJson(json);

  static List<T> decodeList<T>(List<dynamic> value) {
    final codec = _find<T>();
    return value
        .map((dynamic x) => codec.fromJson(x as Map<String, dynamic>))
        .toList()
        .cast<T>();
  }

  static JsonCodec<T> _find<T>() {
    if (!codecs.containsKey(typeOf<T>())) {
      throw Exception('Codec for type <$T> Not Found');
    }
    return codecs[typeOf<T>()]! as JsonCodec<T>;
  }
}

class OpenAPICodec implements JsonCodec<OpenAPI> {
  const OpenAPICodec();

  @override
  OpenAPI fromJson(Json json) {
    return OpenAPI(
      openapi: json['openapi'] as String,
      info: json['info'] != null
          ? OpenApiCodecs.decode<Info>(json['info'] as Json)
          : null,
      paths: (json['paths'] as Json).map(
        (key, dynamic value) =>
            MapEntry(key, OpenApiCodecs.decode(value as Json)),
      ),
      components: OpenApiCodecs.decode<Components>(json['components'] as Json),
    );
  }

  @override
  Json toJson(OpenAPI object) {
    throw UnimplementedError();
  }
}

class InfoCodec implements JsonCodec<Info> {
  const InfoCodec();

  @override
  Info fromJson(Json json) {
    return Info(
      title: json['title'] as String,
      version: json['version'] as String,
      description: json['description'] as String?,
      termsOfService: json['termsOfService'] as String?,
      contact: json['contact'] != null
          ? OpenApiCodecs.decode<Contact>(json['contact'] as Json)
          : null,
      license: json['license'] != null
          ? OpenApiCodecs.decode<License>(json['license'] as Json)
          : null,
    );
  }

  @override
  Json toJson(Info object) {
    throw UnimplementedError();
  }
}

class ContactCodec extends JsonCodec<Contact> {
  const ContactCodec();

  @override
  Contact fromJson(Json json) {
    return Contact(
      name: json['name'] as String?,
      url: json['url'] as String?,
      email: json['email'] as String?,
    );
  }

  @override
  Json toJson(Contact object) {
    throw UnimplementedError();
  }
}

class LicenseCodec extends JsonCodec<License> {
  const LicenseCodec();

  @override
  License fromJson(Json json) {
    return License(
      name: json['name'] as String,
      url: json['url'] as String?,
    );
  }

  @override
  Json toJson(License object) {
    throw UnimplementedError();
  }
}

class PathCodec implements JsonCodec<PathItem> {
  const PathCodec();

  @override
  PathItem fromJson(Json json) {
    return PathItem(
      ref: json[r'\$ref'] as String?,
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      get: json['get'] != null
          ? OpenApiCodecs.decode<Operation>(json['get'] as Json)
          : null,
      put: json['put'] != null
          ? OpenApiCodecs.decode<Operation>(json['put'] as Json)
          : null,
      post: json['post'] != null
          ? OpenApiCodecs.decode<Operation>(json['post'] as Json)
          : null,
      delete: json['delete'] != null
          ? OpenApiCodecs.decode<Operation>(json['delete'] as Json)
          : null,
      options: json['options'] != null
          ? OpenApiCodecs.decode<Operation>(json['options'] as Json)
          : null,
      head: json['head'] != null
          ? OpenApiCodecs.decode<Operation>(json['head'] as Json)
          : null,
      patch: json['patch'] != null
          ? OpenApiCodecs.decode<Operation>(json['patch'] as Json)
          : null,
      trace: json['trace'] != null
          ? OpenApiCodecs.decode<Operation>(json['trace'] as Json)
          : null,
      parameters: json['parameters'] != null
          ? OpenApiCodecs.decodeList<Parameter>(json['parameters'] as List)
          : null,
    );
  }

  @override
  Json toJson(PathItem object) {
    throw UnimplementedError();
  }
}

class OperationCodec extends JsonCodec<Operation> {
  const OperationCodec();

  @override
  Operation fromJson(Json json) {
    return Operation(
      tags: (json['tags'] as List<dynamic>?)?.cast<String>(),
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      externalDocs: json['externalDocs'] != null
          ? OpenApiCodecs.decode(json['externalDocs'] as Json)
          : null,
      operationId: json['operationId'] as String?,
      parameters: ((json['parameters'] as List<dynamic>?) ?? <dynamic>[])
          .map((dynamic e) => OpenApiCodecs.decode<Parameter>(e as Json))
          .toList(),
      requestBody: json['requestBody'] != null
          ? OpenApiCodecs.decode<RequestBody>(json['requestBody'] as Json)
          : null,
      responses: (json['responses'] as Json).map(
        (key, dynamic value) => MapEntry(
          int.parse(key),
          OpenApiCodecs.decode(value as Json),
        ),
      ),
    );
  }

  @override
  Json toJson(Operation object) {
    throw UnimplementedError();
  }
}

class ExternalDocumentationCodec extends JsonCodec<ExternalDocumentation> {
  const ExternalDocumentationCodec();

  @override
  ExternalDocumentation fromJson(Json json) {
    return ExternalDocumentation(
      url: json['url'] as String,
      description: json['description'] as String?,
    );
  }

  @override
  Json toJson(ExternalDocumentation object) {
    throw UnimplementedError();
  }
}

class MediaTypeCodec implements JsonCodec<MediaType> {
  const MediaTypeCodec();

  @override
  MediaType fromJson(Json json) {
    return MediaType(
      schema: OpenApiCodecs.decode(json['schema'] as Json),
      examples: (json['examples'] as Json?)?.map(
        (key, dynamic value) => MapEntry(
          key,
          OpenApiCodecs.decode<Example>(value as Json),
        ),
      ),
    );
  }

  @override
  Json toJson(MediaType object) {
    throw UnimplementedError();
  }
}

class ComponentsCodec implements JsonCodec<Components> {
  const ComponentsCodec();

  @override
  Components fromJson(Json json) {
    return Components(
      schemas: (json['schemas'] as Json? ?? <String, dynamic>{}).map(
        (key, dynamic value) => MapEntry(
          key,
          OpenApiCodecs.decode<Schema>(value as Json) as SchemaObject,
        ),
      ),
      responses: (json['responses'] as Json? ?? <String, dynamic>{}).map(
        (key, dynamic value) => MapEntry(
          key,
          OpenApiCodecs.decode<Response>(value as Json) as ResponseObject,
        ),
      ),
      parameters: (json['parameters'] as Json? ?? <String, dynamic>{}).map(
        (key, dynamic value) => MapEntry(
          key,
          OpenApiCodecs.decode<Parameter>(value as Json) as ParameterObject,
        ),
      ),
      examples: (json['examples'] as Json? ?? <String, dynamic>{}).map(
        (key, dynamic value) => MapEntry(
          key,
          OpenApiCodecs.decode<Example>(value as Json) as ExampleObject,
        ),
      ),
      requestBodies:
          (json['requestBodies'] as Json? ?? <String, dynamic>{}).map(
        (key, dynamic value) => MapEntry(
          key,
          OpenApiCodecs.decode<RequestBody>(value as Json) as RequestBodyObject,
        ),
      ),
      headers: (json['headers'] as Json? ?? <String, dynamic>{}).map(
        (key, dynamic value) => MapEntry(
          key,
          OpenApiCodecs.decode<Header>(value as Json) as HeaderObject,
        ),
      ),
      securitySchemes:
          (json['securitySchemes'] as Json? ?? <String, dynamic>{}).map(
        (key, dynamic value) => MapEntry(
          key,
          OpenApiCodecs.decode<SecurityScheme>(value as Json)
              as SecuritySchemeObject,
        ),
      ),
      links: (json['links'] as Json? ?? <String, dynamic>{}).map(
        (key, dynamic value) => MapEntry(
          key,
          OpenApiCodecs.decode<Link>(value as Json) as LinkObject,
        ),
      ),
    );
  }

  @override
  Json toJson(Components object) {
    throw UnimplementedError();
  }
}

class SchemaCodec extends JsonCodec<Schema> {
  const SchemaCodec();

  @override
  Schema fromJson(Json json) {
    if (json.containsKey(r'$ref')) {
      return Schema.ref(
        description: json['description'] as String?,
        ref: json[r'$ref'] as String,
      );
    }

    return Schema.object(
      type: json['type'] as String?,
      format: json['format'] as String?,
      description: json['description'] as String?,
      readOnly: json['readOnly'] as bool?,
      writeOnly: json['writeOnly'] as bool?,
      nullable: json['nullable'] as bool?,
      defaultValue: json['default'] as Object?,
      multipleOf: json['multipleOf'] as num?,
      maximum: json['maximum'] as num?,
      exclusiveMaximum: json['exclusiveMaximum'] as bool?,
      minimum: json['minimum'] as num?,
      exclusiveMinimum: json['exclusiveMinimum'] as bool?,
      maxLength: json['maxLength'] as int?,
      minLength: json['minLength'] as int?,
      pattern: json['pattern'] as String?,
      maxItems: json['maxItems'] as int?,
      minItems: json['minItems'] as int?,
      uniqueItems: json['uniqueItems'] as bool?,
      maxProperties: json['maxProperties'] as int?,
      minProperties: json['minProperties'] as int?,
      required: (json['required'] as List<dynamic>?)?.cast(),
      enumValues: (json['enum'] as List<dynamic>?)?.cast(),
      allOf: (json['allOf'] as List<dynamic>?)
          ?.map((dynamic e) => fromJson(e as Json))
          .toList(),
      oneOf: (json['oneOf'] as List<dynamic>?)
          ?.map((dynamic e) => fromJson(e as Json))
          .toList(),
      anyOf: (json['anyOf'] as List<dynamic>?)
          ?.map((dynamic e) => fromJson(e as Json))
          .toList(),
      not: json['not'] != null ? fromJson(json['not'] as Json) : null,
      items: json['items'] != null ? fromJson(json['items'] as Json) : null,
      properties: (json['properties'] as Json?)?.map(
        (key, dynamic value) =>
            MapEntry(key, OpenApiCodecs.decode(value as Json)),
      ),
    );
  }

  @override
  Json toJson(Schema object) {
    throw UnimplementedError();
  }
}

class ResponseCodec extends JsonCodec<Response> {
  const ResponseCodec();

  @override
  Response fromJson(Json json) {
    if (json.containsKey(r'$ref')) {
      return Response.ref(ref: json[r'$ref'] as String);
    }

    return Response(
      description: json['description'] as String? ?? '',
      content: (json['content'] as Json?)?.map(
        (key, dynamic value) =>
            MapEntry(key, OpenApiCodecs.decode(value as Json)),
      ),
      links: (json['links'] as Json?)?.map(
        (key, dynamic value) =>
            MapEntry(key, OpenApiCodecs.decode(value as Json)),
      ),
    );
  }

  @override
  Json toJson(Response object) {
    throw UnimplementedError();
  }
}

class ParameterCodec extends JsonCodec<Parameter> {
  const ParameterCodec();

  @override
  Parameter fromJson(Json json) {
    if (json.containsKey(r'$ref')) {
      return Parameter.ref(ref: json[r'$ref'] as String);
    }

    return Parameter(
      name: json['name'] as String,
      in_: json['in'] as String,
      description: json['description'] as String?,
      required: json['required'] as bool? ?? false,
      deprecated: json['deprecated'] as bool? ?? false,
      allowEmptyValue: json['allowEmptyValue'] as bool? ?? false,
      style: json['style'] as String?,
      explode: json['explode'] as bool? ?? false,
      allowReserved: json['allowReserved'] as bool? ?? false,
      schema:
          OpenApiCodecs.decode<Schema>(json['schema'] as Json) as SchemaObject,
    );
  }

  @override
  Json toJson(Parameter object) {
    throw UnimplementedError();
  }
}

class ExampleCodec extends JsonCodec<Example> {
  const ExampleCodec();

  @override
  Example fromJson(Json json) {
    if (json.containsKey(r'$ref')) {
      return Example.ref(ref: json[r'$ref'] as String);
    }

    return Example(
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      value: json['value'],
      externalValue: json['externalValue'] as String?,
    );
  }

  @override
  Json toJson(Example object) {
    throw UnimplementedError();
  }
}

class RequestBodyCodec extends JsonCodec<RequestBody> {
  const RequestBodyCodec();

  @override
  RequestBody fromJson(Json json) {
    if (json.containsKey(r'$ref')) {
      return RequestBody.ref(ref: json[r'$ref'] as String);
    }

    return RequestBody(
      description: json['description'] as String?,
      content: (json['content'] as Json).map(
        (key, dynamic value) =>
            MapEntry(key, OpenApiCodecs.decode(value as Json)),
      ),
      required: json['required'] as bool? ?? false,
    );
  }

  @override
  Json toJson(RequestBody object) {
    throw UnimplementedError();
  }
}

class HeaderCodec extends JsonCodec<Header> {
  const HeaderCodec();

  @override
  Header fromJson(Json json) {
    if (json.containsKey(r'$ref')) {
      return Header.ref(ref: json[r'$ref'] as String);
    }

    return Header(
      description: json['description'] as String?,
      schema:
          OpenApiCodecs.decode<Schema>(json['schema'] as Json) as SchemaObject,
    );
  }

  @override
  Json toJson(Header object) {
    throw UnimplementedError();
  }
}

class SecuritySchemeCodec extends JsonCodec<SecurityScheme> {
  const SecuritySchemeCodec();

  @override
  SecurityScheme fromJson(Json json) {
    if (json.containsKey(r'$ref')) {
      return SecurityScheme.ref(ref: json[r'$ref'] as String);
    }

    return SecurityScheme(
      type: json['type'] as String,
      description: json['description'] as String?,
      name: json['name'] as String?,
      in_: json['in'] as String?,
      scheme: json['scheme'] as String?,
      bearerFormat: json['bearerFormat'] as String?,
    );
  }

  @override
  Json toJson(SecurityScheme object) {
    throw UnimplementedError();
  }
}

class LinkCodec extends JsonCodec<Link> {
  const LinkCodec();

  @override
  Link fromJson(Json json) {
    if (json.containsKey(r'$ref')) {
      return Link.ref(ref: json[r'$ref'] as String);
    }

    return Link(
      operationRef: json['operationRef'] as String?,
      operationId: json['operationId'] as String?,
      parameters: json['parameters'] as Json?,
      description: json['description'] as String?,
    );
  }

  @override
  Json toJson(Link object) {
    throw UnimplementedError();
  }
}

/// Provide processes for translating a data structure into/from Json format.
abstract class JsonCodec<T> {
  /// {@nodoc}
  const JsonCodec();

  /// Convert data structure from a collection of key/value pairs.
  T fromJson(Json json);

  /// Convert data structure to a collection of key/value pairs.
  Json toJson(T object);
}

Type typeOf<T>() => T;
