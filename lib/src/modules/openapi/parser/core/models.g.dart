// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Api _$$_ApiFromJson(Map<String, dynamic> json) => _$_Api(
      title: json['title'] as String?,
      ressources: (json['ressources'] as List<dynamic>?)
              ?.map((e) => ApiRessource.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ApiRessource>[],
    );

Map<String, dynamic> _$$_ApiToJson(_$_Api instance) => <String, dynamic>{
      'title': instance.title,
      'ressources': instance.ressources,
    };

_$_Ressource _$$_RessourceFromJson(Map<String, dynamic> json) => _$_Ressource(
      name: json['name'] as String,
      url: json['url'] as String,
      description: json['description'] as String?,
      deprecated: json['deprecated'] as bool? ?? false,
      fields: (json['fields'] as List<dynamic>?)
              ?.map((e) => ApiField.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ApiField>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => ApiParameter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ApiParameter>[],
      operations: (json['operations'] as List<dynamic>?)
              ?.map((e) => ApiOperation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ApiOperation>[],
    );

Map<String, dynamic> _$$_RessourceToJson(_$_Ressource instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'description': instance.description,
      'deprecated': instance.deprecated,
      'fields': instance.fields,
      'parameters': instance.parameters,
      'operations': instance.operations,
    };

_$_Field _$$_FieldFromJson(Map<String, dynamic> json) => _$_Field(
      name: json['name'] as String,
      type: json['type'] as String,
      description: json['description'] as String?,
      required: json['required'] as bool? ?? false,
      readable: json['readable'] as bool? ?? true,
      writable: json['writable'] as bool? ?? true,
      deprecated: json['deprecated'] as bool? ?? false,
      reference: json['reference'] == null
          ? null
          : ApiRessource.fromJson(json['reference'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FieldToJson(_$_Field instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
      'required': instance.required,
      'readable': instance.readable,
      'writable': instance.writable,
      'deprecated': instance.deprecated,
      'reference': instance.reference,
    };

_$_Operation _$$_OperationFromJson(Map<String, dynamic> json) => _$_Operation(
      method: json['method'] as String?,
      expects: json['expects'],
      returns: json['returns'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      deprecated: json['deprecated'] as bool?,
    );

Map<String, dynamic> _$$_OperationToJson(_$_Operation instance) =>
    <String, dynamic>{
      'method': instance.method,
      'expects': instance.expects,
      'returns': instance.returns,
      'types': instance.types,
      'deprecated': instance.deprecated,
    };

_$_Parameter _$$_ParameterFromJson(Map<String, dynamic> json) => _$_Parameter(
      variable: json['variable'] as String,
      range: json['range'] as String?,
      required: json['required'] as bool,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_ParameterToJson(_$_Parameter instance) =>
    <String, dynamic>{
      'variable': instance.variable,
      'range': instance.range,
      'required': instance.required,
      'description': instance.description,
    };
