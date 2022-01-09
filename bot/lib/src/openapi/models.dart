part of 'openapi.dart';

@freezed
class Api with _$Api {
  const factory Api({
    String? title,
    @Default(<ApiRessource>[]) List<ApiRessource> ressources,
  }) = _Api;

  factory Api.fromJson(Map<String, dynamic> json) => _$ApiFromJson(json);
}

@freezed
class ApiRessource with _$ApiRessource {
  const factory ApiRessource({
    required String name,
    required String url,
    String? description,
    @Default(false) bool deprecated,
    @Default(<ApiField>[]) List<ApiField> fields,
    @Default(<ApiParameter>[]) List<ApiParameter> parameters,
    @Default(<ApiOperation>[]) List<ApiOperation> operations,
  }) = _Ressource;

  factory ApiRessource.fromJson(Map<String, dynamic> json) =>
      _$ApiRessourceFromJson(json);
}

@freezed
class ApiField with _$ApiField {
  const factory ApiField({
    required String name,
    required String type,
    String? description,
    @Default(false) bool required,
    @Default(true) bool readable,
    @Default(true) bool writable,
    @Default(false) bool deprecated,
    ApiRessource? reference,
  }) = _Field;

  factory ApiField.fromJson(Map<String, dynamic> json) =>
      _$ApiFieldFromJson(json);
}

@freezed
class ApiOperation with _$ApiOperation {
  const factory ApiOperation({
    String? method,
    Object? expects,
    String? returns,
    List<String>? types,
    bool? deprecated,
  }) = _Operation;

  factory ApiOperation.fromJson(Map<String, dynamic> json) =>
      _$ApiOperationFromJson(json);
}

@freezed
class ApiParameter with _$ApiParameter {
  const factory ApiParameter({
    required String variable,
    String? range,
    required bool required,
    required String description,
  }) = _Parameter;

  factory ApiParameter.fromJson(Map<String, dynamic> json) =>
      _$ApiParameterFromJson(json);
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#openapi-object
@freezed
class OpenAPI with _$OpenAPI {
  /// This is the root document object of the OpenAPI document.
  const factory OpenAPI({
    // The semantic version number of the OpenAPI version.
    required String openapi,
    // Provides metadata about the API.
    Info? info,
    // The available paths and operations for the API.
    required Map<String, PathItem> paths,
    // An element to hold various elements for the specification.
    required Components components,
  }) = _OpenAPI;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#info-object
@freezed
class Info with _$Info {
  /// Provides metadata about the API.
  const factory Info({
    // The title of the API.
    required String title,
    // The version of the OpenAPI document.
    required String version,
    // A short description of the API.
    String? description,
    // A URL to the Terms of Service for the API.
    String? termsOfService,
    // The contact information for the exposed API.
    Contact? contact,
    // The license information for the exposed API.
    License? license,
  }) = _Info;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#contact-object
@freezed
class Contact with _$Contact {
  /// Contact information for the exposed API.
  const factory Contact({
    // The identifying name of the contact person/organization.
    String? name,
    // The URL pointing to the contact information.
    String? url,
    // The email address of the contact person/organization.
    String? email,
  }) = _Contact;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#license-object
@freezed
class License with _$License {
  /// License information for the exposed API.
  const factory License({
    // The license name used for the API.
    required String name,
    // A URL to the license used for the API.
    String? url,
  }) = _License;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#path-item-object
@freezed
class PathItem with _$PathItem {
  /// Describes the operations available on a single path.
  const factory PathItem({
    // Allows for an external definition of this path item.
    String? ref,
    // An optional, string summary, intended to apply to all operations
    // in this path.
    String? summary,
    // An optional, string description, intended to apply to all operations
    // in this path.
    String? description,
    // A definition of a GET operation on this path.
    Operation? get,
    // A definition of a PUT operation on this path.
    Operation? put,
    // A definition of a POST operation on this path.
    Operation? post,
    // A definition of a DELETE operation on this path.
    Operation? delete,
    // A definition of a OPTIONS operation on this path.
    Operation? options,
    // A definition of a HEAD operation on this path.
    Operation? head,
    // A definition of a PATCH operation on this path.
    Operation? patch,
    // A definition of a TRACE operation on this path.
    Operation? trace,
    // A list of parameters that are applicable for all the operations described
    // under this path.
    List<Parameter>? parameters,
  }) = PathItemObject;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#operation-object
@freezed
class Operation with _$Operation {
  /// Describes a single API operation on a path.
  const factory Operation({
    // A list of tags for API documentation control.
    // Tags can be used for logical grouping of operations by resources.
    List<String>? tags,
    // A short summary of what the operation does.
    String? summary,
    // A verbose explanation of the operation behavior.
    String? description,
    // Additional external documentation for this operation.
    ExternalDocumentation? externalDocs,
    // Unique string used to identify the operation.
    String? operationId,
    // A list of parameters that are applicable for this operation.
    @Default(<Parameter>[]) List<Parameter> parameters,
    // The request body applicable for this operation.
    RequestBody? requestBody,
    // Maps HTTP response code to the expected response.
    required Map<int, Response> responses,
  }) = OperationObject;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#external-documentation-object
@freezed
class ExternalDocumentation with _$ExternalDocumentation {
  /// Allows referencing an external resource for extended documentation.
  const factory ExternalDocumentation({
    // The URL for the target documentation.
    required String url,
    // A short description of the target documentation.
    String? description,
  }) = _ExternalDocumentation;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#media-type-object
@freezed
class MediaType with _$MediaType {
  /// Provides schema for the media type identified by its key.
  const factory MediaType({
    // The schema defining the content of the request, response, or parameter.
    required Schema schema,
    // Examples of the media type.
    Map<String, Example>? examples,
  }) = _MediaType;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#components-object
@freezed
class Components with _$Components {
  /// Holds a set of reusable objects for different aspects of the openAPI
  /// specifications.
  const factory Components({
    // An object to hold reusable Schema Objects.
    required Map<String, SchemaObject> schemas,
    // An object to hold reusable Response Objects.
    required Map<String, ResponseObject> responses,
    // An object to hold reusable Parameter Objects.
    required Map<String, ParameterObject> parameters,
    // An object to hold reusable Example Objects.
    required Map<String, ExampleObject> examples,
    // An object to hold reusable Request Body Objects.
    required Map<String, RequestBodyObject> requestBodies,
    // An object to hold reusable Header Objects.
    required Map<String, HeaderObject> headers,
    // An object to hold reusable Security Scheme Objects.
    required Map<String, SecuritySchemeObject> securitySchemes,
    // An object to hold reusable Link Objects.
    required Map<String, LinkObject> links,
  }) = _Components;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#schema-object
@freezed
class Schema with _$Schema {
  /// The definition of input and output data types.
  const factory Schema({
    String? type,
    String? format,
    String? description,
    bool? readOnly,
    bool? writeOnly,
    bool? nullable,
    Object? defaultValue,
    num? multipleOf,
    num? maximum,
    bool? exclusiveMaximum,
    num? minimum,
    bool? exclusiveMinimum,
    int? maxLength,
    int? minLength,
    String? pattern,
    int? maxItems,
    int? minItems,
    bool? uniqueItems,
    int? maxProperties,
    int? minProperties,
    List<String>? required,
    List<String>? enumValues,
    List<Schema>? allOf,
    List<Schema>? oneOf,
    List<Schema>? anyOf,
    Schema? not,
    // present if the type is array.
    Schema? items,
    Map<String, Schema>? properties,
  }) = SchemaObject;

  const factory Schema.ref({
    String? description,
    required String ref,
  }) = SchemaObjectRef;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#response-object
@freezed
class Response with _$Response {
  /// Describes a single response from an API Operation.
  const factory Response({
    // A short description of the response.
    required String description,
    // A map containing descriptions of potential response payloads.
    Map<String, MediaType>? content,
    // A map of operations links that can be followed from the response.
    Map<String, Link>? links,
  }) = ResponseObject;

  const factory Response.ref({required String ref}) = ResponseObjectRef;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#parameter-object
@freezed
class Parameter with _$Parameter {
  /// Describes a single operation parameter.
  const factory Parameter({
    // The name of the parameter.
    required String name,
    // The location of the parameter.
    // Possible values are "path", "query", "header", or "cookie".
    required String in_,
    // A brief description of the parameter.
    String? description,
    // Determines whether this parameter is mandatory.
    @Default(false) bool required,
    // Specifies that a parameter is deprecated.
    @Default(false) bool deprecated,
    // Sets the ability to pass empty-valued parameters.
    @Default(false) bool allowEmptyValue,
    // Describes how the parameter value will be serialized depending on the
    // type of the parameter value.
    String? style,
    // Allows multiple values to be submitted.
    @Default(false) bool explode,
    // Determines whether the parameter value allow reserved characters, as
    // `:/?#[]@!$&'()*+,;=` to be included without percent-encoding.
    // This property only applies to parameters with an "in" value of "query".
    @Default(false) bool allowReserved,
    // The schema defining the type used for the parameter.
    required SchemaObject schema,
  }) = ParameterObject;

  const factory Parameter.ref({required String ref}) = ParameterObjectRef;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#example-object
@freezed
class Example with _$Example {
  /// Openapi Example Object
  const factory Example({
    // Short description for the example.
    String? summary,
    // Long description for the example.
    String? description,
    // Embedded literal example.
    dynamic value,
    // A URL that points to the literal example.
    String? externalValue,
  }) = ExampleObject;

  const factory Example.ref({required String ref}) = ExampleObjectRef;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#request-body-object
@freezed
class RequestBody with _$RequestBody {
  /// Describes a single request body.
  const factory RequestBody({
    // A brief description of the request body.
    String? description,
    // The content of the request body.
    required Map<String, MediaType> content,
    // Determines if the request body is required in the request.
    @Default(false) bool required,
  }) = RequestBodyObject;

  const factory RequestBody.ref({required String ref}) = RequestBodyObjectRef;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#header-object
@freezed
class Header with _$Header {
  /// Openapi Header Object
  const factory Header({
    // A brief description of the header.
    String? description,
    // The schema defining the type used for the header.
    required SchemaObject schema,
  }) = HeaderObject;

  const factory Header.ref({required String ref}) = HeaderObjectRef;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#security-scheme-object
@freezed
class SecurityScheme with _$SecurityScheme {
  /// Defines a security scheme that can be used by the operations.
  const factory SecurityScheme({
    // The type of the security scheme.
    // Valid values are "apiKey", "http", "oauth2", "openIdConnect".
    required String type,
    // A short description for security scheme.
    String? description,
    // The name of the header, query or cookie parameter to be used.
    String? name,
    // The location of the API key.
    // Valid values are "query", "header" or "cookie".
    String? in_,
    // The name of the HTTP Authorization scheme to be used in the Authorization
    // header as defined in RFC7235.
    String? scheme,
    // A hint to the client to identify how the bearer token is formatted.
    String? bearerFormat,
  }) = SecuritySchemeObject;

  const factory SecurityScheme.ref({
    required String ref,
  }) = SecuritySchemeObjectRef;
}

/// https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.3.md#link-object
@freezed
class Link with _$Link {
  /// The Link object represents a possible design-time link for a response.
  const factory Link({
    // A relative or absolute reference to an API.
    String? operationRef,
    // The name of an existing operation, as defined with a unique operationId.
    String? operationId,
    // A map representing parameters to pass to an operation.
    Map<String, dynamic>? parameters,
    // A description of the link.
    String? description,
  }) = LinkObject;

  const factory Link.ref({required String ref}) = LinkObjectRef;
}
