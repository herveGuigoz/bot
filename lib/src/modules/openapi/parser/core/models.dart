import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

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
