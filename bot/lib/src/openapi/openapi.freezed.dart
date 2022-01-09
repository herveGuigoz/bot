// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'openapi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Api _$ApiFromJson(Map<String, dynamic> json) {
  return _Api.fromJson(json);
}

/// @nodoc
class _$ApiTearOff {
  const _$ApiTearOff();

  _Api call(
      {String? title, List<ApiRessource> ressources = const <ApiRessource>[]}) {
    return _Api(
      title: title,
      ressources: ressources,
    );
  }

  Api fromJson(Map<String, Object?> json) {
    return Api.fromJson(json);
  }
}

/// @nodoc
const $Api = _$ApiTearOff();

/// @nodoc
mixin _$Api {
  String? get title => throw _privateConstructorUsedError;
  List<ApiRessource> get ressources => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiCopyWith<Api> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCopyWith<$Res> {
  factory $ApiCopyWith(Api value, $Res Function(Api) then) =
      _$ApiCopyWithImpl<$Res>;
  $Res call({String? title, List<ApiRessource> ressources});
}

/// @nodoc
class _$ApiCopyWithImpl<$Res> implements $ApiCopyWith<$Res> {
  _$ApiCopyWithImpl(this._value, this._then);

  final Api _value;
  // ignore: unused_field
  final $Res Function(Api) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? ressources = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      ressources: ressources == freezed
          ? _value.ressources
          : ressources // ignore: cast_nullable_to_non_nullable
              as List<ApiRessource>,
    ));
  }
}

/// @nodoc
abstract class _$ApiCopyWith<$Res> implements $ApiCopyWith<$Res> {
  factory _$ApiCopyWith(_Api value, $Res Function(_Api) then) =
      __$ApiCopyWithImpl<$Res>;
  @override
  $Res call({String? title, List<ApiRessource> ressources});
}

/// @nodoc
class __$ApiCopyWithImpl<$Res> extends _$ApiCopyWithImpl<$Res>
    implements _$ApiCopyWith<$Res> {
  __$ApiCopyWithImpl(_Api _value, $Res Function(_Api) _then)
      : super(_value, (v) => _then(v as _Api));

  @override
  _Api get _value => super._value as _Api;

  @override
  $Res call({
    Object? title = freezed,
    Object? ressources = freezed,
  }) {
    return _then(_Api(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      ressources: ressources == freezed
          ? _value.ressources
          : ressources // ignore: cast_nullable_to_non_nullable
              as List<ApiRessource>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Api implements _Api {
  const _$_Api({this.title, this.ressources = const <ApiRessource>[]});

  factory _$_Api.fromJson(Map<String, dynamic> json) => _$$_ApiFromJson(json);

  @override
  final String? title;
  @JsonKey()
  @override
  final List<ApiRessource> ressources;

  @override
  String toString() {
    return 'Api(title: $title, ressources: $ressources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Api &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.ressources, ressources));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(ressources));

  @JsonKey(ignore: true)
  @override
  _$ApiCopyWith<_Api> get copyWith =>
      __$ApiCopyWithImpl<_Api>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiToJson(this);
  }
}

abstract class _Api implements Api {
  const factory _Api({String? title, List<ApiRessource> ressources}) = _$_Api;

  factory _Api.fromJson(Map<String, dynamic> json) = _$_Api.fromJson;

  @override
  String? get title;
  @override
  List<ApiRessource> get ressources;
  @override
  @JsonKey(ignore: true)
  _$ApiCopyWith<_Api> get copyWith => throw _privateConstructorUsedError;
}

ApiRessource _$ApiRessourceFromJson(Map<String, dynamic> json) {
  return _Ressource.fromJson(json);
}

/// @nodoc
class _$ApiRessourceTearOff {
  const _$ApiRessourceTearOff();

  _Ressource call(
      {required String name,
      required String url,
      String? description,
      bool deprecated = false,
      List<ApiField> fields = const <ApiField>[],
      List<ApiParameter> parameters = const <ApiParameter>[],
      List<ApiOperation> operations = const <ApiOperation>[]}) {
    return _Ressource(
      name: name,
      url: url,
      description: description,
      deprecated: deprecated,
      fields: fields,
      parameters: parameters,
      operations: operations,
    );
  }

  ApiRessource fromJson(Map<String, Object?> json) {
    return ApiRessource.fromJson(json);
  }
}

/// @nodoc
const $ApiRessource = _$ApiRessourceTearOff();

/// @nodoc
mixin _$ApiRessource {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get deprecated => throw _privateConstructorUsedError;
  List<ApiField> get fields => throw _privateConstructorUsedError;
  List<ApiParameter> get parameters => throw _privateConstructorUsedError;
  List<ApiOperation> get operations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiRessourceCopyWith<ApiRessource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRessourceCopyWith<$Res> {
  factory $ApiRessourceCopyWith(
          ApiRessource value, $Res Function(ApiRessource) then) =
      _$ApiRessourceCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String url,
      String? description,
      bool deprecated,
      List<ApiField> fields,
      List<ApiParameter> parameters,
      List<ApiOperation> operations});
}

/// @nodoc
class _$ApiRessourceCopyWithImpl<$Res> implements $ApiRessourceCopyWith<$Res> {
  _$ApiRessourceCopyWithImpl(this._value, this._then);

  final ApiRessource _value;
  // ignore: unused_field
  final $Res Function(ApiRessource) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? deprecated = freezed,
    Object? fields = freezed,
    Object? parameters = freezed,
    Object? operations = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      deprecated: deprecated == freezed
          ? _value.deprecated
          : deprecated // ignore: cast_nullable_to_non_nullable
              as bool,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<ApiField>,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ApiParameter>,
      operations: operations == freezed
          ? _value.operations
          : operations // ignore: cast_nullable_to_non_nullable
              as List<ApiOperation>,
    ));
  }
}

/// @nodoc
abstract class _$RessourceCopyWith<$Res>
    implements $ApiRessourceCopyWith<$Res> {
  factory _$RessourceCopyWith(
          _Ressource value, $Res Function(_Ressource) then) =
      __$RessourceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String url,
      String? description,
      bool deprecated,
      List<ApiField> fields,
      List<ApiParameter> parameters,
      List<ApiOperation> operations});
}

/// @nodoc
class __$RessourceCopyWithImpl<$Res> extends _$ApiRessourceCopyWithImpl<$Res>
    implements _$RessourceCopyWith<$Res> {
  __$RessourceCopyWithImpl(_Ressource _value, $Res Function(_Ressource) _then)
      : super(_value, (v) => _then(v as _Ressource));

  @override
  _Ressource get _value => super._value as _Ressource;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? deprecated = freezed,
    Object? fields = freezed,
    Object? parameters = freezed,
    Object? operations = freezed,
  }) {
    return _then(_Ressource(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      deprecated: deprecated == freezed
          ? _value.deprecated
          : deprecated // ignore: cast_nullable_to_non_nullable
              as bool,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<ApiField>,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ApiParameter>,
      operations: operations == freezed
          ? _value.operations
          : operations // ignore: cast_nullable_to_non_nullable
              as List<ApiOperation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ressource implements _Ressource {
  const _$_Ressource(
      {required this.name,
      required this.url,
      this.description,
      this.deprecated = false,
      this.fields = const <ApiField>[],
      this.parameters = const <ApiParameter>[],
      this.operations = const <ApiOperation>[]});

  factory _$_Ressource.fromJson(Map<String, dynamic> json) =>
      _$$_RessourceFromJson(json);

  @override
  final String name;
  @override
  final String url;
  @override
  final String? description;
  @JsonKey()
  @override
  final bool deprecated;
  @JsonKey()
  @override
  final List<ApiField> fields;
  @JsonKey()
  @override
  final List<ApiParameter> parameters;
  @JsonKey()
  @override
  final List<ApiOperation> operations;

  @override
  String toString() {
    return 'ApiRessource(name: $name, url: $url, description: $description, deprecated: $deprecated, fields: $fields, parameters: $parameters, operations: $operations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ressource &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.deprecated, deprecated) &&
            const DeepCollectionEquality().equals(other.fields, fields) &&
            const DeepCollectionEquality()
                .equals(other.parameters, parameters) &&
            const DeepCollectionEquality()
                .equals(other.operations, operations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(deprecated),
      const DeepCollectionEquality().hash(fields),
      const DeepCollectionEquality().hash(parameters),
      const DeepCollectionEquality().hash(operations));

  @JsonKey(ignore: true)
  @override
  _$RessourceCopyWith<_Ressource> get copyWith =>
      __$RessourceCopyWithImpl<_Ressource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RessourceToJson(this);
  }
}

abstract class _Ressource implements ApiRessource {
  const factory _Ressource(
      {required String name,
      required String url,
      String? description,
      bool deprecated,
      List<ApiField> fields,
      List<ApiParameter> parameters,
      List<ApiOperation> operations}) = _$_Ressource;

  factory _Ressource.fromJson(Map<String, dynamic> json) =
      _$_Ressource.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  String? get description;
  @override
  bool get deprecated;
  @override
  List<ApiField> get fields;
  @override
  List<ApiParameter> get parameters;
  @override
  List<ApiOperation> get operations;
  @override
  @JsonKey(ignore: true)
  _$RessourceCopyWith<_Ressource> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiField _$ApiFieldFromJson(Map<String, dynamic> json) {
  return _Field.fromJson(json);
}

/// @nodoc
class _$ApiFieldTearOff {
  const _$ApiFieldTearOff();

  _Field call(
      {required String name,
      required String type,
      String? description,
      bool required = false,
      bool readable = true,
      bool writable = true,
      bool deprecated = false,
      ApiRessource? reference}) {
    return _Field(
      name: name,
      type: type,
      description: description,
      required: required,
      readable: readable,
      writable: writable,
      deprecated: deprecated,
      reference: reference,
    );
  }

  ApiField fromJson(Map<String, Object?> json) {
    return ApiField.fromJson(json);
  }
}

/// @nodoc
const $ApiField = _$ApiFieldTearOff();

/// @nodoc
mixin _$ApiField {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get required => throw _privateConstructorUsedError;
  bool get readable => throw _privateConstructorUsedError;
  bool get writable => throw _privateConstructorUsedError;
  bool get deprecated => throw _privateConstructorUsedError;
  ApiRessource? get reference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiFieldCopyWith<ApiField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFieldCopyWith<$Res> {
  factory $ApiFieldCopyWith(ApiField value, $Res Function(ApiField) then) =
      _$ApiFieldCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String type,
      String? description,
      bool required,
      bool readable,
      bool writable,
      bool deprecated,
      ApiRessource? reference});

  $ApiRessourceCopyWith<$Res>? get reference;
}

/// @nodoc
class _$ApiFieldCopyWithImpl<$Res> implements $ApiFieldCopyWith<$Res> {
  _$ApiFieldCopyWithImpl(this._value, this._then);

  final ApiField _value;
  // ignore: unused_field
  final $Res Function(ApiField) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? required = freezed,
    Object? readable = freezed,
    Object? writable = freezed,
    Object? deprecated = freezed,
    Object? reference = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      required: required == freezed
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      readable: readable == freezed
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as bool,
      writable: writable == freezed
          ? _value.writable
          : writable // ignore: cast_nullable_to_non_nullable
              as bool,
      deprecated: deprecated == freezed
          ? _value.deprecated
          : deprecated // ignore: cast_nullable_to_non_nullable
              as bool,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as ApiRessource?,
    ));
  }

  @override
  $ApiRessourceCopyWith<$Res>? get reference {
    if (_value.reference == null) {
      return null;
    }

    return $ApiRessourceCopyWith<$Res>(_value.reference!, (value) {
      return _then(_value.copyWith(reference: value));
    });
  }
}

/// @nodoc
abstract class _$FieldCopyWith<$Res> implements $ApiFieldCopyWith<$Res> {
  factory _$FieldCopyWith(_Field value, $Res Function(_Field) then) =
      __$FieldCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String type,
      String? description,
      bool required,
      bool readable,
      bool writable,
      bool deprecated,
      ApiRessource? reference});

  @override
  $ApiRessourceCopyWith<$Res>? get reference;
}

/// @nodoc
class __$FieldCopyWithImpl<$Res> extends _$ApiFieldCopyWithImpl<$Res>
    implements _$FieldCopyWith<$Res> {
  __$FieldCopyWithImpl(_Field _value, $Res Function(_Field) _then)
      : super(_value, (v) => _then(v as _Field));

  @override
  _Field get _value => super._value as _Field;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? required = freezed,
    Object? readable = freezed,
    Object? writable = freezed,
    Object? deprecated = freezed,
    Object? reference = freezed,
  }) {
    return _then(_Field(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      required: required == freezed
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      readable: readable == freezed
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as bool,
      writable: writable == freezed
          ? _value.writable
          : writable // ignore: cast_nullable_to_non_nullable
              as bool,
      deprecated: deprecated == freezed
          ? _value.deprecated
          : deprecated // ignore: cast_nullable_to_non_nullable
              as bool,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as ApiRessource?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Field implements _Field {
  const _$_Field(
      {required this.name,
      required this.type,
      this.description,
      this.required = false,
      this.readable = true,
      this.writable = true,
      this.deprecated = false,
      this.reference});

  factory _$_Field.fromJson(Map<String, dynamic> json) =>
      _$$_FieldFromJson(json);

  @override
  final String name;
  @override
  final String type;
  @override
  final String? description;
  @JsonKey()
  @override
  final bool required;
  @JsonKey()
  @override
  final bool readable;
  @JsonKey()
  @override
  final bool writable;
  @JsonKey()
  @override
  final bool deprecated;
  @override
  final ApiRessource? reference;

  @override
  String toString() {
    return 'ApiField(name: $name, type: $type, description: $description, required: $required, readable: $readable, writable: $writable, deprecated: $deprecated, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Field &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.required, required) &&
            const DeepCollectionEquality().equals(other.readable, readable) &&
            const DeepCollectionEquality().equals(other.writable, writable) &&
            const DeepCollectionEquality()
                .equals(other.deprecated, deprecated) &&
            const DeepCollectionEquality().equals(other.reference, reference));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(required),
      const DeepCollectionEquality().hash(readable),
      const DeepCollectionEquality().hash(writable),
      const DeepCollectionEquality().hash(deprecated),
      const DeepCollectionEquality().hash(reference));

  @JsonKey(ignore: true)
  @override
  _$FieldCopyWith<_Field> get copyWith =>
      __$FieldCopyWithImpl<_Field>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FieldToJson(this);
  }
}

abstract class _Field implements ApiField {
  const factory _Field(
      {required String name,
      required String type,
      String? description,
      bool required,
      bool readable,
      bool writable,
      bool deprecated,
      ApiRessource? reference}) = _$_Field;

  factory _Field.fromJson(Map<String, dynamic> json) = _$_Field.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  String? get description;
  @override
  bool get required;
  @override
  bool get readable;
  @override
  bool get writable;
  @override
  bool get deprecated;
  @override
  ApiRessource? get reference;
  @override
  @JsonKey(ignore: true)
  _$FieldCopyWith<_Field> get copyWith => throw _privateConstructorUsedError;
}

ApiOperation _$ApiOperationFromJson(Map<String, dynamic> json) {
  return _Operation.fromJson(json);
}

/// @nodoc
class _$ApiOperationTearOff {
  const _$ApiOperationTearOff();

  _Operation call(
      {String? method,
      Object? expects,
      String? returns,
      List<String>? types,
      bool? deprecated}) {
    return _Operation(
      method: method,
      expects: expects,
      returns: returns,
      types: types,
      deprecated: deprecated,
    );
  }

  ApiOperation fromJson(Map<String, Object?> json) {
    return ApiOperation.fromJson(json);
  }
}

/// @nodoc
const $ApiOperation = _$ApiOperationTearOff();

/// @nodoc
mixin _$ApiOperation {
  String? get method => throw _privateConstructorUsedError;
  Object? get expects => throw _privateConstructorUsedError;
  String? get returns => throw _privateConstructorUsedError;
  List<String>? get types => throw _privateConstructorUsedError;
  bool? get deprecated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiOperationCopyWith<ApiOperation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiOperationCopyWith<$Res> {
  factory $ApiOperationCopyWith(
          ApiOperation value, $Res Function(ApiOperation) then) =
      _$ApiOperationCopyWithImpl<$Res>;
  $Res call(
      {String? method,
      Object? expects,
      String? returns,
      List<String>? types,
      bool? deprecated});
}

/// @nodoc
class _$ApiOperationCopyWithImpl<$Res> implements $ApiOperationCopyWith<$Res> {
  _$ApiOperationCopyWithImpl(this._value, this._then);

  final ApiOperation _value;
  // ignore: unused_field
  final $Res Function(ApiOperation) _then;

  @override
  $Res call({
    Object? method = freezed,
    Object? expects = freezed,
    Object? returns = freezed,
    Object? types = freezed,
    Object? deprecated = freezed,
  }) {
    return _then(_value.copyWith(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      expects: expects == freezed ? _value.expects : expects,
      returns: returns == freezed
          ? _value.returns
          : returns // ignore: cast_nullable_to_non_nullable
              as String?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      deprecated: deprecated == freezed
          ? _value.deprecated
          : deprecated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$OperationCopyWith<$Res>
    implements $ApiOperationCopyWith<$Res> {
  factory _$OperationCopyWith(
          _Operation value, $Res Function(_Operation) then) =
      __$OperationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? method,
      Object? expects,
      String? returns,
      List<String>? types,
      bool? deprecated});
}

/// @nodoc
class __$OperationCopyWithImpl<$Res> extends _$ApiOperationCopyWithImpl<$Res>
    implements _$OperationCopyWith<$Res> {
  __$OperationCopyWithImpl(_Operation _value, $Res Function(_Operation) _then)
      : super(_value, (v) => _then(v as _Operation));

  @override
  _Operation get _value => super._value as _Operation;

  @override
  $Res call({
    Object? method = freezed,
    Object? expects = freezed,
    Object? returns = freezed,
    Object? types = freezed,
    Object? deprecated = freezed,
  }) {
    return _then(_Operation(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      expects: expects == freezed ? _value.expects : expects,
      returns: returns == freezed
          ? _value.returns
          : returns // ignore: cast_nullable_to_non_nullable
              as String?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      deprecated: deprecated == freezed
          ? _value.deprecated
          : deprecated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Operation implements _Operation {
  const _$_Operation(
      {this.method, this.expects, this.returns, this.types, this.deprecated});

  factory _$_Operation.fromJson(Map<String, dynamic> json) =>
      _$$_OperationFromJson(json);

  @override
  final String? method;
  @override
  final Object? expects;
  @override
  final String? returns;
  @override
  final List<String>? types;
  @override
  final bool? deprecated;

  @override
  String toString() {
    return 'ApiOperation(method: $method, expects: $expects, returns: $returns, types: $types, deprecated: $deprecated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Operation &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.expects, expects) &&
            const DeepCollectionEquality().equals(other.returns, returns) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            const DeepCollectionEquality()
                .equals(other.deprecated, deprecated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(expects),
      const DeepCollectionEquality().hash(returns),
      const DeepCollectionEquality().hash(types),
      const DeepCollectionEquality().hash(deprecated));

  @JsonKey(ignore: true)
  @override
  _$OperationCopyWith<_Operation> get copyWith =>
      __$OperationCopyWithImpl<_Operation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OperationToJson(this);
  }
}

abstract class _Operation implements ApiOperation {
  const factory _Operation(
      {String? method,
      Object? expects,
      String? returns,
      List<String>? types,
      bool? deprecated}) = _$_Operation;

  factory _Operation.fromJson(Map<String, dynamic> json) =
      _$_Operation.fromJson;

  @override
  String? get method;
  @override
  Object? get expects;
  @override
  String? get returns;
  @override
  List<String>? get types;
  @override
  bool? get deprecated;
  @override
  @JsonKey(ignore: true)
  _$OperationCopyWith<_Operation> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiParameter _$ApiParameterFromJson(Map<String, dynamic> json) {
  return _Parameter.fromJson(json);
}

/// @nodoc
class _$ApiParameterTearOff {
  const _$ApiParameterTearOff();

  _Parameter call(
      {required String variable,
      String? range,
      required bool required,
      required String description}) {
    return _Parameter(
      variable: variable,
      range: range,
      required: required,
      description: description,
    );
  }

  ApiParameter fromJson(Map<String, Object?> json) {
    return ApiParameter.fromJson(json);
  }
}

/// @nodoc
const $ApiParameter = _$ApiParameterTearOff();

/// @nodoc
mixin _$ApiParameter {
  String get variable => throw _privateConstructorUsedError;
  String? get range => throw _privateConstructorUsedError;
  bool get required => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiParameterCopyWith<ApiParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiParameterCopyWith<$Res> {
  factory $ApiParameterCopyWith(
          ApiParameter value, $Res Function(ApiParameter) then) =
      _$ApiParameterCopyWithImpl<$Res>;
  $Res call(
      {String variable, String? range, bool required, String description});
}

/// @nodoc
class _$ApiParameterCopyWithImpl<$Res> implements $ApiParameterCopyWith<$Res> {
  _$ApiParameterCopyWithImpl(this._value, this._then);

  final ApiParameter _value;
  // ignore: unused_field
  final $Res Function(ApiParameter) _then;

  @override
  $Res call({
    Object? variable = freezed,
    Object? range = freezed,
    Object? required = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      variable: variable == freezed
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as String,
      range: range == freezed
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as String?,
      required: required == freezed
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ParameterCopyWith<$Res>
    implements $ApiParameterCopyWith<$Res> {
  factory _$ParameterCopyWith(
          _Parameter value, $Res Function(_Parameter) then) =
      __$ParameterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String variable, String? range, bool required, String description});
}

/// @nodoc
class __$ParameterCopyWithImpl<$Res> extends _$ApiParameterCopyWithImpl<$Res>
    implements _$ParameterCopyWith<$Res> {
  __$ParameterCopyWithImpl(_Parameter _value, $Res Function(_Parameter) _then)
      : super(_value, (v) => _then(v as _Parameter));

  @override
  _Parameter get _value => super._value as _Parameter;

  @override
  $Res call({
    Object? variable = freezed,
    Object? range = freezed,
    Object? required = freezed,
    Object? description = freezed,
  }) {
    return _then(_Parameter(
      variable: variable == freezed
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as String,
      range: range == freezed
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as String?,
      required: required == freezed
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Parameter implements _Parameter {
  const _$_Parameter(
      {required this.variable,
      this.range,
      required this.required,
      required this.description});

  factory _$_Parameter.fromJson(Map<String, dynamic> json) =>
      _$$_ParameterFromJson(json);

  @override
  final String variable;
  @override
  final String? range;
  @override
  final bool required;
  @override
  final String description;

  @override
  String toString() {
    return 'ApiParameter(variable: $variable, range: $range, required: $required, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Parameter &&
            const DeepCollectionEquality().equals(other.variable, variable) &&
            const DeepCollectionEquality().equals(other.range, range) &&
            const DeepCollectionEquality().equals(other.required, required) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(variable),
      const DeepCollectionEquality().hash(range),
      const DeepCollectionEquality().hash(required),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$ParameterCopyWith<_Parameter> get copyWith =>
      __$ParameterCopyWithImpl<_Parameter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParameterToJson(this);
  }
}

abstract class _Parameter implements ApiParameter {
  const factory _Parameter(
      {required String variable,
      String? range,
      required bool required,
      required String description}) = _$_Parameter;

  factory _Parameter.fromJson(Map<String, dynamic> json) =
      _$_Parameter.fromJson;

  @override
  String get variable;
  @override
  String? get range;
  @override
  bool get required;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$ParameterCopyWith<_Parameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OpenAPITearOff {
  const _$OpenAPITearOff();

  _OpenAPI call(
      {required String openapi,
      Info? info,
      required Map<String, PathItem> paths,
      required Components components}) {
    return _OpenAPI(
      openapi: openapi,
      info: info,
      paths: paths,
      components: components,
    );
  }
}

/// @nodoc
const $OpenAPI = _$OpenAPITearOff();

/// @nodoc
mixin _$OpenAPI {
// The semantic version number of the OpenAPI version.
  String get openapi =>
      throw _privateConstructorUsedError; // Provides metadata about the API.
  Info? get info =>
      throw _privateConstructorUsedError; // The available paths and operations for the API.
  Map<String, PathItem> get paths =>
      throw _privateConstructorUsedError; // An element to hold various elements for the specification.
  Components get components => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpenAPICopyWith<OpenAPI> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAPICopyWith<$Res> {
  factory $OpenAPICopyWith(OpenAPI value, $Res Function(OpenAPI) then) =
      _$OpenAPICopyWithImpl<$Res>;
  $Res call(
      {String openapi,
      Info? info,
      Map<String, PathItem> paths,
      Components components});

  $InfoCopyWith<$Res>? get info;
  $ComponentsCopyWith<$Res> get components;
}

/// @nodoc
class _$OpenAPICopyWithImpl<$Res> implements $OpenAPICopyWith<$Res> {
  _$OpenAPICopyWithImpl(this._value, this._then);

  final OpenAPI _value;
  // ignore: unused_field
  final $Res Function(OpenAPI) _then;

  @override
  $Res call({
    Object? openapi = freezed,
    Object? info = freezed,
    Object? paths = freezed,
    Object? components = freezed,
  }) {
    return _then(_value.copyWith(
      openapi: openapi == freezed
          ? _value.openapi
          : openapi // ignore: cast_nullable_to_non_nullable
              as String,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      paths: paths == freezed
          ? _value.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as Map<String, PathItem>,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as Components,
    ));
  }

  @override
  $InfoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $InfoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $ComponentsCopyWith<$Res> get components {
    return $ComponentsCopyWith<$Res>(_value.components, (value) {
      return _then(_value.copyWith(components: value));
    });
  }
}

/// @nodoc
abstract class _$OpenAPICopyWith<$Res> implements $OpenAPICopyWith<$Res> {
  factory _$OpenAPICopyWith(_OpenAPI value, $Res Function(_OpenAPI) then) =
      __$OpenAPICopyWithImpl<$Res>;
  @override
  $Res call(
      {String openapi,
      Info? info,
      Map<String, PathItem> paths,
      Components components});

  @override
  $InfoCopyWith<$Res>? get info;
  @override
  $ComponentsCopyWith<$Res> get components;
}

/// @nodoc
class __$OpenAPICopyWithImpl<$Res> extends _$OpenAPICopyWithImpl<$Res>
    implements _$OpenAPICopyWith<$Res> {
  __$OpenAPICopyWithImpl(_OpenAPI _value, $Res Function(_OpenAPI) _then)
      : super(_value, (v) => _then(v as _OpenAPI));

  @override
  _OpenAPI get _value => super._value as _OpenAPI;

  @override
  $Res call({
    Object? openapi = freezed,
    Object? info = freezed,
    Object? paths = freezed,
    Object? components = freezed,
  }) {
    return _then(_OpenAPI(
      openapi: openapi == freezed
          ? _value.openapi
          : openapi // ignore: cast_nullable_to_non_nullable
              as String,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      paths: paths == freezed
          ? _value.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as Map<String, PathItem>,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as Components,
    ));
  }
}

/// @nodoc

class _$_OpenAPI implements _OpenAPI {
  const _$_OpenAPI(
      {required this.openapi,
      this.info,
      required this.paths,
      required this.components});

  @override // The semantic version number of the OpenAPI version.
  final String openapi;
  @override // Provides metadata about the API.
  final Info? info;
  @override // The available paths and operations for the API.
  final Map<String, PathItem> paths;
  @override // An element to hold various elements for the specification.
  final Components components;

  @override
  String toString() {
    return 'OpenAPI(openapi: $openapi, info: $info, paths: $paths, components: $components)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenAPI &&
            const DeepCollectionEquality().equals(other.openapi, openapi) &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.paths, paths) &&
            const DeepCollectionEquality()
                .equals(other.components, components));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(openapi),
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(paths),
      const DeepCollectionEquality().hash(components));

  @JsonKey(ignore: true)
  @override
  _$OpenAPICopyWith<_OpenAPI> get copyWith =>
      __$OpenAPICopyWithImpl<_OpenAPI>(this, _$identity);
}

abstract class _OpenAPI implements OpenAPI {
  const factory _OpenAPI(
      {required String openapi,
      Info? info,
      required Map<String, PathItem> paths,
      required Components components}) = _$_OpenAPI;

  @override // The semantic version number of the OpenAPI version.
  String get openapi;
  @override // Provides metadata about the API.
  Info? get info;
  @override // The available paths and operations for the API.
  Map<String, PathItem> get paths;
  @override // An element to hold various elements for the specification.
  Components get components;
  @override
  @JsonKey(ignore: true)
  _$OpenAPICopyWith<_OpenAPI> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InfoTearOff {
  const _$InfoTearOff();

  _Info call(
      {required String title,
      required String version,
      String? description,
      String? termsOfService,
      Contact? contact,
      License? license}) {
    return _Info(
      title: title,
      version: version,
      description: description,
      termsOfService: termsOfService,
      contact: contact,
      license: license,
    );
  }
}

/// @nodoc
const $Info = _$InfoTearOff();

/// @nodoc
mixin _$Info {
// The title of the API.
  String get title =>
      throw _privateConstructorUsedError; // The version of the OpenAPI document.
  String get version =>
      throw _privateConstructorUsedError; // A short description of the API.
  String? get description =>
      throw _privateConstructorUsedError; // A URL to the Terms of Service for the API.
  String? get termsOfService =>
      throw _privateConstructorUsedError; // The contact information for the exposed API.
  Contact? get contact =>
      throw _privateConstructorUsedError; // The license information for the exposed API.
  License? get license => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String version,
      String? description,
      String? termsOfService,
      Contact? contact,
      License? license});

  $ContactCopyWith<$Res>? get contact;
  $LicenseCopyWith<$Res>? get license;
}

/// @nodoc
class _$InfoCopyWithImpl<$Res> implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._value, this._then);

  final Info _value;
  // ignore: unused_field
  final $Res Function(Info) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? termsOfService = freezed,
    Object? contact = freezed,
    Object? license = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      termsOfService: termsOfService == freezed
          ? _value.termsOfService
          : termsOfService // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      license: license == freezed
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as License?,
    ));
  }

  @override
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }

  @override
  $LicenseCopyWith<$Res>? get license {
    if (_value.license == null) {
      return null;
    }

    return $LicenseCopyWith<$Res>(_value.license!, (value) {
      return _then(_value.copyWith(license: value));
    });
  }
}

/// @nodoc
abstract class _$InfoCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$InfoCopyWith(_Info value, $Res Function(_Info) then) =
      __$InfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String version,
      String? description,
      String? termsOfService,
      Contact? contact,
      License? license});

  @override
  $ContactCopyWith<$Res>? get contact;
  @override
  $LicenseCopyWith<$Res>? get license;
}

/// @nodoc
class __$InfoCopyWithImpl<$Res> extends _$InfoCopyWithImpl<$Res>
    implements _$InfoCopyWith<$Res> {
  __$InfoCopyWithImpl(_Info _value, $Res Function(_Info) _then)
      : super(_value, (v) => _then(v as _Info));

  @override
  _Info get _value => super._value as _Info;

  @override
  $Res call({
    Object? title = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? termsOfService = freezed,
    Object? contact = freezed,
    Object? license = freezed,
  }) {
    return _then(_Info(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      termsOfService: termsOfService == freezed
          ? _value.termsOfService
          : termsOfService // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      license: license == freezed
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as License?,
    ));
  }
}

/// @nodoc

class _$_Info implements _Info {
  const _$_Info(
      {required this.title,
      required this.version,
      this.description,
      this.termsOfService,
      this.contact,
      this.license});

  @override // The title of the API.
  final String title;
  @override // The version of the OpenAPI document.
  final String version;
  @override // A short description of the API.
  final String? description;
  @override // A URL to the Terms of Service for the API.
  final String? termsOfService;
  @override // The contact information for the exposed API.
  final Contact? contact;
  @override // The license information for the exposed API.
  final License? license;

  @override
  String toString() {
    return 'Info(title: $title, version: $version, description: $description, termsOfService: $termsOfService, contact: $contact, license: $license)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Info &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.termsOfService, termsOfService) &&
            const DeepCollectionEquality().equals(other.contact, contact) &&
            const DeepCollectionEquality().equals(other.license, license));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(termsOfService),
      const DeepCollectionEquality().hash(contact),
      const DeepCollectionEquality().hash(license));

  @JsonKey(ignore: true)
  @override
  _$InfoCopyWith<_Info> get copyWith =>
      __$InfoCopyWithImpl<_Info>(this, _$identity);
}

abstract class _Info implements Info {
  const factory _Info(
      {required String title,
      required String version,
      String? description,
      String? termsOfService,
      Contact? contact,
      License? license}) = _$_Info;

  @override // The title of the API.
  String get title;
  @override // The version of the OpenAPI document.
  String get version;
  @override // A short description of the API.
  String? get description;
  @override // A URL to the Terms of Service for the API.
  String? get termsOfService;
  @override // The contact information for the exposed API.
  Contact? get contact;
  @override // The license information for the exposed API.
  License? get license;
  @override
  @JsonKey(ignore: true)
  _$InfoCopyWith<_Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ContactTearOff {
  const _$ContactTearOff();

  _Contact call({String? name, String? url, String? email}) {
    return _Contact(
      name: name,
      url: url,
      email: email,
    );
  }
}

/// @nodoc
const $Contact = _$ContactTearOff();

/// @nodoc
mixin _$Contact {
// The identifying name of the contact person/organization.
  String? get name =>
      throw _privateConstructorUsedError; // The URL pointing to the contact information.
  String? get url =>
      throw _privateConstructorUsedError; // The email address of the contact person/organization.
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res>;
  $Res call({String? name, String? url, String? email});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res> implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  final Contact _value;
  // ignore: unused_field
  final $Res Function(Contact) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$ContactCopyWith(_Contact value, $Res Function(_Contact) then) =
      __$ContactCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? url, String? email});
}

/// @nodoc
class __$ContactCopyWithImpl<$Res> extends _$ContactCopyWithImpl<$Res>
    implements _$ContactCopyWith<$Res> {
  __$ContactCopyWithImpl(_Contact _value, $Res Function(_Contact) _then)
      : super(_value, (v) => _then(v as _Contact));

  @override
  _Contact get _value => super._value as _Contact;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? email = freezed,
  }) {
    return _then(_Contact(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Contact implements _Contact {
  const _$_Contact({this.name, this.url, this.email});

  @override // The identifying name of the contact person/organization.
  final String? name;
  @override // The URL pointing to the contact information.
  final String? url;
  @override // The email address of the contact person/organization.
  final String? email;

  @override
  String toString() {
    return 'Contact(name: $name, url: $url, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Contact &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$ContactCopyWith<_Contact> get copyWith =>
      __$ContactCopyWithImpl<_Contact>(this, _$identity);
}

abstract class _Contact implements Contact {
  const factory _Contact({String? name, String? url, String? email}) =
      _$_Contact;

  @override // The identifying name of the contact person/organization.
  String? get name;
  @override // The URL pointing to the contact information.
  String? get url;
  @override // The email address of the contact person/organization.
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$ContactCopyWith<_Contact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LicenseTearOff {
  const _$LicenseTearOff();

  _License call({required String name, String? url}) {
    return _License(
      name: name,
      url: url,
    );
  }
}

/// @nodoc
const $License = _$LicenseTearOff();

/// @nodoc
mixin _$License {
// The license name used for the API.
  String get name =>
      throw _privateConstructorUsedError; // A URL to the license used for the API.
  String? get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LicenseCopyWith<License> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicenseCopyWith<$Res> {
  factory $LicenseCopyWith(License value, $Res Function(License) then) =
      _$LicenseCopyWithImpl<$Res>;
  $Res call({String name, String? url});
}

/// @nodoc
class _$LicenseCopyWithImpl<$Res> implements $LicenseCopyWith<$Res> {
  _$LicenseCopyWithImpl(this._value, this._then);

  final License _value;
  // ignore: unused_field
  final $Res Function(License) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LicenseCopyWith<$Res> implements $LicenseCopyWith<$Res> {
  factory _$LicenseCopyWith(_License value, $Res Function(_License) then) =
      __$LicenseCopyWithImpl<$Res>;
  @override
  $Res call({String name, String? url});
}

/// @nodoc
class __$LicenseCopyWithImpl<$Res> extends _$LicenseCopyWithImpl<$Res>
    implements _$LicenseCopyWith<$Res> {
  __$LicenseCopyWithImpl(_License _value, $Res Function(_License) _then)
      : super(_value, (v) => _then(v as _License));

  @override
  _License get _value => super._value as _License;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_License(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_License implements _License {
  const _$_License({required this.name, this.url});

  @override // The license name used for the API.
  final String name;
  @override // A URL to the license used for the API.
  final String? url;

  @override
  String toString() {
    return 'License(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _License &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$LicenseCopyWith<_License> get copyWith =>
      __$LicenseCopyWithImpl<_License>(this, _$identity);
}

abstract class _License implements License {
  const factory _License({required String name, String? url}) = _$_License;

  @override // The license name used for the API.
  String get name;
  @override // A URL to the license used for the API.
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$LicenseCopyWith<_License> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PathItemTearOff {
  const _$PathItemTearOff();

  PathItemObject call(
      {String? ref,
      String? summary,
      String? description,
      Operation? get,
      Operation? put,
      Operation? post,
      Operation? delete,
      Operation? options,
      Operation? head,
      Operation? patch,
      Operation? trace,
      List<Parameter>? parameters}) {
    return PathItemObject(
      ref: ref,
      summary: summary,
      description: description,
      get: get,
      put: put,
      post: post,
      delete: delete,
      options: options,
      head: head,
      patch: patch,
      trace: trace,
      parameters: parameters,
    );
  }
}

/// @nodoc
const $PathItem = _$PathItemTearOff();

/// @nodoc
mixin _$PathItem {
// Allows for an external definition of this path item.
  String? get ref =>
      throw _privateConstructorUsedError; // An optional, string summary, intended to apply to all operations
// in this path.
  String? get summary =>
      throw _privateConstructorUsedError; // An optional, string description, intended to apply to all operations
// in this path.
  String? get description =>
      throw _privateConstructorUsedError; // A definition of a GET operation on this path.
  Operation? get get =>
      throw _privateConstructorUsedError; // A definition of a PUT operation on this path.
  Operation? get put =>
      throw _privateConstructorUsedError; // A definition of a POST operation on this path.
  Operation? get post =>
      throw _privateConstructorUsedError; // A definition of a DELETE operation on this path.
  Operation? get delete =>
      throw _privateConstructorUsedError; // A definition of a OPTIONS operation on this path.
  Operation? get options =>
      throw _privateConstructorUsedError; // A definition of a HEAD operation on this path.
  Operation? get head =>
      throw _privateConstructorUsedError; // A definition of a PATCH operation on this path.
  Operation? get patch =>
      throw _privateConstructorUsedError; // A definition of a TRACE operation on this path.
  Operation? get trace =>
      throw _privateConstructorUsedError; // A list of parameters that are applicable for all the operations described
// under this path.
  List<Parameter>? get parameters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PathItemCopyWith<PathItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathItemCopyWith<$Res> {
  factory $PathItemCopyWith(PathItem value, $Res Function(PathItem) then) =
      _$PathItemCopyWithImpl<$Res>;
  $Res call(
      {String? ref,
      String? summary,
      String? description,
      Operation? get,
      Operation? put,
      Operation? post,
      Operation? delete,
      Operation? options,
      Operation? head,
      Operation? patch,
      Operation? trace,
      List<Parameter>? parameters});

  $OperationCopyWith<$Res>? get get;
  $OperationCopyWith<$Res>? get put;
  $OperationCopyWith<$Res>? get post;
  $OperationCopyWith<$Res>? get delete;
  $OperationCopyWith<$Res>? get options;
  $OperationCopyWith<$Res>? get head;
  $OperationCopyWith<$Res>? get patch;
  $OperationCopyWith<$Res>? get trace;
}

/// @nodoc
class _$PathItemCopyWithImpl<$Res> implements $PathItemCopyWith<$Res> {
  _$PathItemCopyWithImpl(this._value, this._then);

  final PathItem _value;
  // ignore: unused_field
  final $Res Function(PathItem) _then;

  @override
  $Res call({
    Object? ref = freezed,
    Object? summary = freezed,
    Object? description = freezed,
    Object? get = freezed,
    Object? put = freezed,
    Object? post = freezed,
    Object? delete = freezed,
    Object? options = freezed,
    Object? head = freezed,
    Object? patch = freezed,
    Object? trace = freezed,
    Object? parameters = freezed,
  }) {
    return _then(_value.copyWith(
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      get: get == freezed
          ? _value.get
          : get // ignore: cast_nullable_to_non_nullable
              as Operation?,
      put: put == freezed
          ? _value.put
          : put // ignore: cast_nullable_to_non_nullable
              as Operation?,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Operation?,
      delete: delete == freezed
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as Operation?,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Operation?,
      head: head == freezed
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as Operation?,
      patch: patch == freezed
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as Operation?,
      trace: trace == freezed
          ? _value.trace
          : trace // ignore: cast_nullable_to_non_nullable
              as Operation?,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<Parameter>?,
    ));
  }

  @override
  $OperationCopyWith<$Res>? get get {
    if (_value.get == null) {
      return null;
    }

    return $OperationCopyWith<$Res>(_value.get!, (value) {
      return _then(_value.copyWith(get: value));
    });
  }

  @override
  $OperationCopyWith<$Res>? get put {
    if (_value.put == null) {
      return null;
    }

    return $OperationCopyWith<$Res>(_value.put!, (value) {
      return _then(_value.copyWith(put: value));
    });
  }

  @override
  $OperationCopyWith<$Res>? get post {
    if (_value.post == null) {
      return null;
    }

    return $OperationCopyWith<$Res>(_value.post!, (value) {
      return _then(_value.copyWith(post: value));
    });
  }

  @override
  $OperationCopyWith<$Res>? get delete {
    if (_value.delete == null) {
      return null;
    }

    return $OperationCopyWith<$Res>(_value.delete!, (value) {
      return _then(_value.copyWith(delete: value));
    });
  }

  @override
  $OperationCopyWith<$Res>? get options {
    if (_value.options == null) {
      return null;
    }

    return $OperationCopyWith<$Res>(_value.options!, (value) {
      return _then(_value.copyWith(options: value));
    });
  }

  @override
  $OperationCopyWith<$Res>? get head {
    if (_value.head == null) {
      return null;
    }

    return $OperationCopyWith<$Res>(_value.head!, (value) {
      return _then(_value.copyWith(head: value));
    });
  }

  @override
  $OperationCopyWith<$Res>? get patch {
    if (_value.patch == null) {
      return null;
    }

    return $OperationCopyWith<$Res>(_value.patch!, (value) {
      return _then(_value.copyWith(patch: value));
    });
  }

  @override
  $OperationCopyWith<$Res>? get trace {
    if (_value.trace == null) {
      return null;
    }

    return $OperationCopyWith<$Res>(_value.trace!, (value) {
      return _then(_value.copyWith(trace: value));
    });
  }
}

/// @nodoc
abstract class $PathItemObjectCopyWith<$Res>
    implements $PathItemCopyWith<$Res> {
  factory $PathItemObjectCopyWith(
          PathItemObject value, $Res Function(PathItemObject) then) =
      _$PathItemObjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? ref,
      String? summary,
      String? description,
      Operation? get,
      Operation? put,
      Operation? post,
      Operation? delete,
      Operation? options,
      Operation? head,
      Operation? patch,
      Operation? trace,
      List<Parameter>? parameters});

  @override
  $OperationCopyWith<$Res>? get get;
  @override
  $OperationCopyWith<$Res>? get put;
  @override
  $OperationCopyWith<$Res>? get post;
  @override
  $OperationCopyWith<$Res>? get delete;
  @override
  $OperationCopyWith<$Res>? get options;
  @override
  $OperationCopyWith<$Res>? get head;
  @override
  $OperationCopyWith<$Res>? get patch;
  @override
  $OperationCopyWith<$Res>? get trace;
}

/// @nodoc
class _$PathItemObjectCopyWithImpl<$Res> extends _$PathItemCopyWithImpl<$Res>
    implements $PathItemObjectCopyWith<$Res> {
  _$PathItemObjectCopyWithImpl(
      PathItemObject _value, $Res Function(PathItemObject) _then)
      : super(_value, (v) => _then(v as PathItemObject));

  @override
  PathItemObject get _value => super._value as PathItemObject;

  @override
  $Res call({
    Object? ref = freezed,
    Object? summary = freezed,
    Object? description = freezed,
    Object? get = freezed,
    Object? put = freezed,
    Object? post = freezed,
    Object? delete = freezed,
    Object? options = freezed,
    Object? head = freezed,
    Object? patch = freezed,
    Object? trace = freezed,
    Object? parameters = freezed,
  }) {
    return _then(PathItemObject(
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      get: get == freezed
          ? _value.get
          : get // ignore: cast_nullable_to_non_nullable
              as Operation?,
      put: put == freezed
          ? _value.put
          : put // ignore: cast_nullable_to_non_nullable
              as Operation?,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Operation?,
      delete: delete == freezed
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as Operation?,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Operation?,
      head: head == freezed
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as Operation?,
      patch: patch == freezed
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as Operation?,
      trace: trace == freezed
          ? _value.trace
          : trace // ignore: cast_nullable_to_non_nullable
              as Operation?,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<Parameter>?,
    ));
  }
}

/// @nodoc

class _$PathItemObject implements PathItemObject {
  const _$PathItemObject(
      {this.ref,
      this.summary,
      this.description,
      this.get,
      this.put,
      this.post,
      this.delete,
      this.options,
      this.head,
      this.patch,
      this.trace,
      this.parameters});

  @override // Allows for an external definition of this path item.
  final String? ref;
  @override // An optional, string summary, intended to apply to all operations
// in this path.
  final String? summary;
  @override // An optional, string description, intended to apply to all operations
// in this path.
  final String? description;
  @override // A definition of a GET operation on this path.
  final Operation? get;
  @override // A definition of a PUT operation on this path.
  final Operation? put;
  @override // A definition of a POST operation on this path.
  final Operation? post;
  @override // A definition of a DELETE operation on this path.
  final Operation? delete;
  @override // A definition of a OPTIONS operation on this path.
  final Operation? options;
  @override // A definition of a HEAD operation on this path.
  final Operation? head;
  @override // A definition of a PATCH operation on this path.
  final Operation? patch;
  @override // A definition of a TRACE operation on this path.
  final Operation? trace;
  @override // A list of parameters that are applicable for all the operations described
// under this path.
  final List<Parameter>? parameters;

  @override
  String toString() {
    return 'PathItem(ref: $ref, summary: $summary, description: $description, get: $get, put: $put, post: $post, delete: $delete, options: $options, head: $head, patch: $patch, trace: $trace, parameters: $parameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PathItemObject &&
            const DeepCollectionEquality().equals(other.ref, ref) &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.get, get) &&
            const DeepCollectionEquality().equals(other.put, put) &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality().equals(other.delete, delete) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            const DeepCollectionEquality().equals(other.head, head) &&
            const DeepCollectionEquality().equals(other.patch, patch) &&
            const DeepCollectionEquality().equals(other.trace, trace) &&
            const DeepCollectionEquality()
                .equals(other.parameters, parameters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ref),
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(get),
      const DeepCollectionEquality().hash(put),
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(delete),
      const DeepCollectionEquality().hash(options),
      const DeepCollectionEquality().hash(head),
      const DeepCollectionEquality().hash(patch),
      const DeepCollectionEquality().hash(trace),
      const DeepCollectionEquality().hash(parameters));

  @JsonKey(ignore: true)
  @override
  $PathItemObjectCopyWith<PathItemObject> get copyWith =>
      _$PathItemObjectCopyWithImpl<PathItemObject>(this, _$identity);
}

abstract class PathItemObject implements PathItem {
  const factory PathItemObject(
      {String? ref,
      String? summary,
      String? description,
      Operation? get,
      Operation? put,
      Operation? post,
      Operation? delete,
      Operation? options,
      Operation? head,
      Operation? patch,
      Operation? trace,
      List<Parameter>? parameters}) = _$PathItemObject;

  @override // Allows for an external definition of this path item.
  String? get ref;
  @override // An optional, string summary, intended to apply to all operations
// in this path.
  String? get summary;
  @override // An optional, string description, intended to apply to all operations
// in this path.
  String? get description;
  @override // A definition of a GET operation on this path.
  Operation? get get;
  @override // A definition of a PUT operation on this path.
  Operation? get put;
  @override // A definition of a POST operation on this path.
  Operation? get post;
  @override // A definition of a DELETE operation on this path.
  Operation? get delete;
  @override // A definition of a OPTIONS operation on this path.
  Operation? get options;
  @override // A definition of a HEAD operation on this path.
  Operation? get head;
  @override // A definition of a PATCH operation on this path.
  Operation? get patch;
  @override // A definition of a TRACE operation on this path.
  Operation? get trace;
  @override // A list of parameters that are applicable for all the operations described
// under this path.
  List<Parameter>? get parameters;
  @override
  @JsonKey(ignore: true)
  $PathItemObjectCopyWith<PathItemObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OperationTearOff {
  const _$OperationTearOff();

  OperationObject call(
      {List<String>? tags,
      String? summary,
      String? description,
      ExternalDocumentation? externalDocs,
      String? operationId,
      List<Parameter> parameters = const <Parameter>[],
      RequestBody? requestBody,
      required Map<int, Response> responses}) {
    return OperationObject(
      tags: tags,
      summary: summary,
      description: description,
      externalDocs: externalDocs,
      operationId: operationId,
      parameters: parameters,
      requestBody: requestBody,
      responses: responses,
    );
  }
}

/// @nodoc
const $Operation = _$OperationTearOff();

/// @nodoc
mixin _$Operation {
// A list of tags for API documentation control.
// Tags can be used for logical grouping of operations by resources.
  List<String>? get tags =>
      throw _privateConstructorUsedError; // A short summary of what the operation does.
  String? get summary =>
      throw _privateConstructorUsedError; // A verbose explanation of the operation behavior.
  String? get description =>
      throw _privateConstructorUsedError; // Additional external documentation for this operation.
  ExternalDocumentation? get externalDocs =>
      throw _privateConstructorUsedError; // Unique string used to identify the operation.
  String? get operationId =>
      throw _privateConstructorUsedError; // A list of parameters that are applicable for this operation.
  List<Parameter> get parameters =>
      throw _privateConstructorUsedError; // The request body applicable for this operation.
  RequestBody? get requestBody =>
      throw _privateConstructorUsedError; // Maps HTTP response code to the expected response.
  Map<int, Response> get responses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OperationCopyWith<Operation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationCopyWith<$Res> {
  factory $OperationCopyWith(Operation value, $Res Function(Operation) then) =
      _$OperationCopyWithImpl<$Res>;
  $Res call(
      {List<String>? tags,
      String? summary,
      String? description,
      ExternalDocumentation? externalDocs,
      String? operationId,
      List<Parameter> parameters,
      RequestBody? requestBody,
      Map<int, Response> responses});

  $ExternalDocumentationCopyWith<$Res>? get externalDocs;
  $RequestBodyCopyWith<$Res>? get requestBody;
}

/// @nodoc
class _$OperationCopyWithImpl<$Res> implements $OperationCopyWith<$Res> {
  _$OperationCopyWithImpl(this._value, this._then);

  final Operation _value;
  // ignore: unused_field
  final $Res Function(Operation) _then;

  @override
  $Res call({
    Object? tags = freezed,
    Object? summary = freezed,
    Object? description = freezed,
    Object? externalDocs = freezed,
    Object? operationId = freezed,
    Object? parameters = freezed,
    Object? requestBody = freezed,
    Object? responses = freezed,
  }) {
    return _then(_value.copyWith(
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      externalDocs: externalDocs == freezed
          ? _value.externalDocs
          : externalDocs // ignore: cast_nullable_to_non_nullable
              as ExternalDocumentation?,
      operationId: operationId == freezed
          ? _value.operationId
          : operationId // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      requestBody: requestBody == freezed
          ? _value.requestBody
          : requestBody // ignore: cast_nullable_to_non_nullable
              as RequestBody?,
      responses: responses == freezed
          ? _value.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as Map<int, Response>,
    ));
  }

  @override
  $ExternalDocumentationCopyWith<$Res>? get externalDocs {
    if (_value.externalDocs == null) {
      return null;
    }

    return $ExternalDocumentationCopyWith<$Res>(_value.externalDocs!, (value) {
      return _then(_value.copyWith(externalDocs: value));
    });
  }

  @override
  $RequestBodyCopyWith<$Res>? get requestBody {
    if (_value.requestBody == null) {
      return null;
    }

    return $RequestBodyCopyWith<$Res>(_value.requestBody!, (value) {
      return _then(_value.copyWith(requestBody: value));
    });
  }
}

/// @nodoc
abstract class $OperationObjectCopyWith<$Res>
    implements $OperationCopyWith<$Res> {
  factory $OperationObjectCopyWith(
          OperationObject value, $Res Function(OperationObject) then) =
      _$OperationObjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String>? tags,
      String? summary,
      String? description,
      ExternalDocumentation? externalDocs,
      String? operationId,
      List<Parameter> parameters,
      RequestBody? requestBody,
      Map<int, Response> responses});

  @override
  $ExternalDocumentationCopyWith<$Res>? get externalDocs;
  @override
  $RequestBodyCopyWith<$Res>? get requestBody;
}

/// @nodoc
class _$OperationObjectCopyWithImpl<$Res> extends _$OperationCopyWithImpl<$Res>
    implements $OperationObjectCopyWith<$Res> {
  _$OperationObjectCopyWithImpl(
      OperationObject _value, $Res Function(OperationObject) _then)
      : super(_value, (v) => _then(v as OperationObject));

  @override
  OperationObject get _value => super._value as OperationObject;

  @override
  $Res call({
    Object? tags = freezed,
    Object? summary = freezed,
    Object? description = freezed,
    Object? externalDocs = freezed,
    Object? operationId = freezed,
    Object? parameters = freezed,
    Object? requestBody = freezed,
    Object? responses = freezed,
  }) {
    return _then(OperationObject(
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      externalDocs: externalDocs == freezed
          ? _value.externalDocs
          : externalDocs // ignore: cast_nullable_to_non_nullable
              as ExternalDocumentation?,
      operationId: operationId == freezed
          ? _value.operationId
          : operationId // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      requestBody: requestBody == freezed
          ? _value.requestBody
          : requestBody // ignore: cast_nullable_to_non_nullable
              as RequestBody?,
      responses: responses == freezed
          ? _value.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as Map<int, Response>,
    ));
  }
}

/// @nodoc

class _$OperationObject implements OperationObject {
  const _$OperationObject(
      {this.tags,
      this.summary,
      this.description,
      this.externalDocs,
      this.operationId,
      this.parameters = const <Parameter>[],
      this.requestBody,
      required this.responses});

  @override // A list of tags for API documentation control.
// Tags can be used for logical grouping of operations by resources.
  final List<String>? tags;
  @override // A short summary of what the operation does.
  final String? summary;
  @override // A verbose explanation of the operation behavior.
  final String? description;
  @override // Additional external documentation for this operation.
  final ExternalDocumentation? externalDocs;
  @override // Unique string used to identify the operation.
  final String? operationId;
  @JsonKey()
  @override // A list of parameters that are applicable for this operation.
  final List<Parameter> parameters;
  @override // The request body applicable for this operation.
  final RequestBody? requestBody;
  @override // Maps HTTP response code to the expected response.
  final Map<int, Response> responses;

  @override
  String toString() {
    return 'Operation(tags: $tags, summary: $summary, description: $description, externalDocs: $externalDocs, operationId: $operationId, parameters: $parameters, requestBody: $requestBody, responses: $responses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OperationObject &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.externalDocs, externalDocs) &&
            const DeepCollectionEquality()
                .equals(other.operationId, operationId) &&
            const DeepCollectionEquality()
                .equals(other.parameters, parameters) &&
            const DeepCollectionEquality()
                .equals(other.requestBody, requestBody) &&
            const DeepCollectionEquality().equals(other.responses, responses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(externalDocs),
      const DeepCollectionEquality().hash(operationId),
      const DeepCollectionEquality().hash(parameters),
      const DeepCollectionEquality().hash(requestBody),
      const DeepCollectionEquality().hash(responses));

  @JsonKey(ignore: true)
  @override
  $OperationObjectCopyWith<OperationObject> get copyWith =>
      _$OperationObjectCopyWithImpl<OperationObject>(this, _$identity);
}

abstract class OperationObject implements Operation {
  const factory OperationObject(
      {List<String>? tags,
      String? summary,
      String? description,
      ExternalDocumentation? externalDocs,
      String? operationId,
      List<Parameter> parameters,
      RequestBody? requestBody,
      required Map<int, Response> responses}) = _$OperationObject;

  @override // A list of tags for API documentation control.
// Tags can be used for logical grouping of operations by resources.
  List<String>? get tags;
  @override // A short summary of what the operation does.
  String? get summary;
  @override // A verbose explanation of the operation behavior.
  String? get description;
  @override // Additional external documentation for this operation.
  ExternalDocumentation? get externalDocs;
  @override // Unique string used to identify the operation.
  String? get operationId;
  @override // A list of parameters that are applicable for this operation.
  List<Parameter> get parameters;
  @override // The request body applicable for this operation.
  RequestBody? get requestBody;
  @override // Maps HTTP response code to the expected response.
  Map<int, Response> get responses;
  @override
  @JsonKey(ignore: true)
  $OperationObjectCopyWith<OperationObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExternalDocumentationTearOff {
  const _$ExternalDocumentationTearOff();

  _ExternalDocumentation call({required String url, String? description}) {
    return _ExternalDocumentation(
      url: url,
      description: description,
    );
  }
}

/// @nodoc
const $ExternalDocumentation = _$ExternalDocumentationTearOff();

/// @nodoc
mixin _$ExternalDocumentation {
// The URL for the target documentation.
  String get url =>
      throw _privateConstructorUsedError; // A short description of the target documentation.
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExternalDocumentationCopyWith<ExternalDocumentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalDocumentationCopyWith<$Res> {
  factory $ExternalDocumentationCopyWith(ExternalDocumentation value,
          $Res Function(ExternalDocumentation) then) =
      _$ExternalDocumentationCopyWithImpl<$Res>;
  $Res call({String url, String? description});
}

/// @nodoc
class _$ExternalDocumentationCopyWithImpl<$Res>
    implements $ExternalDocumentationCopyWith<$Res> {
  _$ExternalDocumentationCopyWithImpl(this._value, this._then);

  final ExternalDocumentation _value;
  // ignore: unused_field
  final $Res Function(ExternalDocumentation) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ExternalDocumentationCopyWith<$Res>
    implements $ExternalDocumentationCopyWith<$Res> {
  factory _$ExternalDocumentationCopyWith(_ExternalDocumentation value,
          $Res Function(_ExternalDocumentation) then) =
      __$ExternalDocumentationCopyWithImpl<$Res>;
  @override
  $Res call({String url, String? description});
}

/// @nodoc
class __$ExternalDocumentationCopyWithImpl<$Res>
    extends _$ExternalDocumentationCopyWithImpl<$Res>
    implements _$ExternalDocumentationCopyWith<$Res> {
  __$ExternalDocumentationCopyWithImpl(_ExternalDocumentation _value,
      $Res Function(_ExternalDocumentation) _then)
      : super(_value, (v) => _then(v as _ExternalDocumentation));

  @override
  _ExternalDocumentation get _value => super._value as _ExternalDocumentation;

  @override
  $Res call({
    Object? url = freezed,
    Object? description = freezed,
  }) {
    return _then(_ExternalDocumentation(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ExternalDocumentation implements _ExternalDocumentation {
  const _$_ExternalDocumentation({required this.url, this.description});

  @override // The URL for the target documentation.
  final String url;
  @override // A short description of the target documentation.
  final String? description;

  @override
  String toString() {
    return 'ExternalDocumentation(url: $url, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExternalDocumentation &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$ExternalDocumentationCopyWith<_ExternalDocumentation> get copyWith =>
      __$ExternalDocumentationCopyWithImpl<_ExternalDocumentation>(
          this, _$identity);
}

abstract class _ExternalDocumentation implements ExternalDocumentation {
  const factory _ExternalDocumentation(
      {required String url, String? description}) = _$_ExternalDocumentation;

  @override // The URL for the target documentation.
  String get url;
  @override // A short description of the target documentation.
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$ExternalDocumentationCopyWith<_ExternalDocumentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MediaTypeTearOff {
  const _$MediaTypeTearOff();

  _MediaType call({required Schema schema, Map<String, Example>? examples}) {
    return _MediaType(
      schema: schema,
      examples: examples,
    );
  }
}

/// @nodoc
const $MediaType = _$MediaTypeTearOff();

/// @nodoc
mixin _$MediaType {
// The schema defining the content of the request, response, or parameter.
  Schema get schema =>
      throw _privateConstructorUsedError; // Examples of the media type.
  Map<String, Example>? get examples => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaTypeCopyWith<MediaType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaTypeCopyWith<$Res> {
  factory $MediaTypeCopyWith(MediaType value, $Res Function(MediaType) then) =
      _$MediaTypeCopyWithImpl<$Res>;
  $Res call({Schema schema, Map<String, Example>? examples});

  $SchemaCopyWith<$Res> get schema;
}

/// @nodoc
class _$MediaTypeCopyWithImpl<$Res> implements $MediaTypeCopyWith<$Res> {
  _$MediaTypeCopyWithImpl(this._value, this._then);

  final MediaType _value;
  // ignore: unused_field
  final $Res Function(MediaType) _then;

  @override
  $Res call({
    Object? schema = freezed,
    Object? examples = freezed,
  }) {
    return _then(_value.copyWith(
      schema: schema == freezed
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as Schema,
      examples: examples == freezed
          ? _value.examples
          : examples // ignore: cast_nullable_to_non_nullable
              as Map<String, Example>?,
    ));
  }

  @override
  $SchemaCopyWith<$Res> get schema {
    return $SchemaCopyWith<$Res>(_value.schema, (value) {
      return _then(_value.copyWith(schema: value));
    });
  }
}

/// @nodoc
abstract class _$MediaTypeCopyWith<$Res> implements $MediaTypeCopyWith<$Res> {
  factory _$MediaTypeCopyWith(
          _MediaType value, $Res Function(_MediaType) then) =
      __$MediaTypeCopyWithImpl<$Res>;
  @override
  $Res call({Schema schema, Map<String, Example>? examples});

  @override
  $SchemaCopyWith<$Res> get schema;
}

/// @nodoc
class __$MediaTypeCopyWithImpl<$Res> extends _$MediaTypeCopyWithImpl<$Res>
    implements _$MediaTypeCopyWith<$Res> {
  __$MediaTypeCopyWithImpl(_MediaType _value, $Res Function(_MediaType) _then)
      : super(_value, (v) => _then(v as _MediaType));

  @override
  _MediaType get _value => super._value as _MediaType;

  @override
  $Res call({
    Object? schema = freezed,
    Object? examples = freezed,
  }) {
    return _then(_MediaType(
      schema: schema == freezed
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as Schema,
      examples: examples == freezed
          ? _value.examples
          : examples // ignore: cast_nullable_to_non_nullable
              as Map<String, Example>?,
    ));
  }
}

/// @nodoc

class _$_MediaType implements _MediaType {
  const _$_MediaType({required this.schema, this.examples});

  @override // The schema defining the content of the request, response, or parameter.
  final Schema schema;
  @override // Examples of the media type.
  final Map<String, Example>? examples;

  @override
  String toString() {
    return 'MediaType(schema: $schema, examples: $examples)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MediaType &&
            const DeepCollectionEquality().equals(other.schema, schema) &&
            const DeepCollectionEquality().equals(other.examples, examples));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(schema),
      const DeepCollectionEquality().hash(examples));

  @JsonKey(ignore: true)
  @override
  _$MediaTypeCopyWith<_MediaType> get copyWith =>
      __$MediaTypeCopyWithImpl<_MediaType>(this, _$identity);
}

abstract class _MediaType implements MediaType {
  const factory _MediaType(
      {required Schema schema, Map<String, Example>? examples}) = _$_MediaType;

  @override // The schema defining the content of the request, response, or parameter.
  Schema get schema;
  @override // Examples of the media type.
  Map<String, Example>? get examples;
  @override
  @JsonKey(ignore: true)
  _$MediaTypeCopyWith<_MediaType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ComponentsTearOff {
  const _$ComponentsTearOff();

  _Components call(
      {required Map<String, SchemaObject> schemas,
      required Map<String, ResponseObject> responses,
      required Map<String, ParameterObject> parameters,
      required Map<String, ExampleObject> examples,
      required Map<String, RequestBodyObject> requestBodies,
      required Map<String, HeaderObject> headers,
      required Map<String, SecuritySchemeObject> securitySchemes,
      required Map<String, LinkObject> links}) {
    return _Components(
      schemas: schemas,
      responses: responses,
      parameters: parameters,
      examples: examples,
      requestBodies: requestBodies,
      headers: headers,
      securitySchemes: securitySchemes,
      links: links,
    );
  }
}

/// @nodoc
const $Components = _$ComponentsTearOff();

/// @nodoc
mixin _$Components {
// An object to hold reusable Schema Objects.
  Map<String, SchemaObject> get schemas =>
      throw _privateConstructorUsedError; // An object to hold reusable Response Objects.
  Map<String, ResponseObject> get responses =>
      throw _privateConstructorUsedError; // An object to hold reusable Parameter Objects.
  Map<String, ParameterObject> get parameters =>
      throw _privateConstructorUsedError; // An object to hold reusable Example Objects.
  Map<String, ExampleObject> get examples =>
      throw _privateConstructorUsedError; // An object to hold reusable Request Body Objects.
  Map<String, RequestBodyObject> get requestBodies =>
      throw _privateConstructorUsedError; // An object to hold reusable Header Objects.
  Map<String, HeaderObject> get headers =>
      throw _privateConstructorUsedError; // An object to hold reusable Security Scheme Objects.
  Map<String, SecuritySchemeObject> get securitySchemes =>
      throw _privateConstructorUsedError; // An object to hold reusable Link Objects.
  Map<String, LinkObject> get links => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComponentsCopyWith<Components> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComponentsCopyWith<$Res> {
  factory $ComponentsCopyWith(
          Components value, $Res Function(Components) then) =
      _$ComponentsCopyWithImpl<$Res>;
  $Res call(
      {Map<String, SchemaObject> schemas,
      Map<String, ResponseObject> responses,
      Map<String, ParameterObject> parameters,
      Map<String, ExampleObject> examples,
      Map<String, RequestBodyObject> requestBodies,
      Map<String, HeaderObject> headers,
      Map<String, SecuritySchemeObject> securitySchemes,
      Map<String, LinkObject> links});
}

/// @nodoc
class _$ComponentsCopyWithImpl<$Res> implements $ComponentsCopyWith<$Res> {
  _$ComponentsCopyWithImpl(this._value, this._then);

  final Components _value;
  // ignore: unused_field
  final $Res Function(Components) _then;

  @override
  $Res call({
    Object? schemas = freezed,
    Object? responses = freezed,
    Object? parameters = freezed,
    Object? examples = freezed,
    Object? requestBodies = freezed,
    Object? headers = freezed,
    Object? securitySchemes = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      schemas: schemas == freezed
          ? _value.schemas
          : schemas // ignore: cast_nullable_to_non_nullable
              as Map<String, SchemaObject>,
      responses: responses == freezed
          ? _value.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as Map<String, ResponseObject>,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, ParameterObject>,
      examples: examples == freezed
          ? _value.examples
          : examples // ignore: cast_nullable_to_non_nullable
              as Map<String, ExampleObject>,
      requestBodies: requestBodies == freezed
          ? _value.requestBodies
          : requestBodies // ignore: cast_nullable_to_non_nullable
              as Map<String, RequestBodyObject>,
      headers: headers == freezed
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, HeaderObject>,
      securitySchemes: securitySchemes == freezed
          ? _value.securitySchemes
          : securitySchemes // ignore: cast_nullable_to_non_nullable
              as Map<String, SecuritySchemeObject>,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, LinkObject>,
    ));
  }
}

/// @nodoc
abstract class _$ComponentsCopyWith<$Res> implements $ComponentsCopyWith<$Res> {
  factory _$ComponentsCopyWith(
          _Components value, $Res Function(_Components) then) =
      __$ComponentsCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, SchemaObject> schemas,
      Map<String, ResponseObject> responses,
      Map<String, ParameterObject> parameters,
      Map<String, ExampleObject> examples,
      Map<String, RequestBodyObject> requestBodies,
      Map<String, HeaderObject> headers,
      Map<String, SecuritySchemeObject> securitySchemes,
      Map<String, LinkObject> links});
}

/// @nodoc
class __$ComponentsCopyWithImpl<$Res> extends _$ComponentsCopyWithImpl<$Res>
    implements _$ComponentsCopyWith<$Res> {
  __$ComponentsCopyWithImpl(
      _Components _value, $Res Function(_Components) _then)
      : super(_value, (v) => _then(v as _Components));

  @override
  _Components get _value => super._value as _Components;

  @override
  $Res call({
    Object? schemas = freezed,
    Object? responses = freezed,
    Object? parameters = freezed,
    Object? examples = freezed,
    Object? requestBodies = freezed,
    Object? headers = freezed,
    Object? securitySchemes = freezed,
    Object? links = freezed,
  }) {
    return _then(_Components(
      schemas: schemas == freezed
          ? _value.schemas
          : schemas // ignore: cast_nullable_to_non_nullable
              as Map<String, SchemaObject>,
      responses: responses == freezed
          ? _value.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as Map<String, ResponseObject>,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, ParameterObject>,
      examples: examples == freezed
          ? _value.examples
          : examples // ignore: cast_nullable_to_non_nullable
              as Map<String, ExampleObject>,
      requestBodies: requestBodies == freezed
          ? _value.requestBodies
          : requestBodies // ignore: cast_nullable_to_non_nullable
              as Map<String, RequestBodyObject>,
      headers: headers == freezed
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, HeaderObject>,
      securitySchemes: securitySchemes == freezed
          ? _value.securitySchemes
          : securitySchemes // ignore: cast_nullable_to_non_nullable
              as Map<String, SecuritySchemeObject>,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, LinkObject>,
    ));
  }
}

/// @nodoc

class _$_Components implements _Components {
  const _$_Components(
      {required this.schemas,
      required this.responses,
      required this.parameters,
      required this.examples,
      required this.requestBodies,
      required this.headers,
      required this.securitySchemes,
      required this.links});

  @override // An object to hold reusable Schema Objects.
  final Map<String, SchemaObject> schemas;
  @override // An object to hold reusable Response Objects.
  final Map<String, ResponseObject> responses;
  @override // An object to hold reusable Parameter Objects.
  final Map<String, ParameterObject> parameters;
  @override // An object to hold reusable Example Objects.
  final Map<String, ExampleObject> examples;
  @override // An object to hold reusable Request Body Objects.
  final Map<String, RequestBodyObject> requestBodies;
  @override // An object to hold reusable Header Objects.
  final Map<String, HeaderObject> headers;
  @override // An object to hold reusable Security Scheme Objects.
  final Map<String, SecuritySchemeObject> securitySchemes;
  @override // An object to hold reusable Link Objects.
  final Map<String, LinkObject> links;

  @override
  String toString() {
    return 'Components(schemas: $schemas, responses: $responses, parameters: $parameters, examples: $examples, requestBodies: $requestBodies, headers: $headers, securitySchemes: $securitySchemes, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Components &&
            const DeepCollectionEquality().equals(other.schemas, schemas) &&
            const DeepCollectionEquality().equals(other.responses, responses) &&
            const DeepCollectionEquality()
                .equals(other.parameters, parameters) &&
            const DeepCollectionEquality().equals(other.examples, examples) &&
            const DeepCollectionEquality()
                .equals(other.requestBodies, requestBodies) &&
            const DeepCollectionEquality().equals(other.headers, headers) &&
            const DeepCollectionEquality()
                .equals(other.securitySchemes, securitySchemes) &&
            const DeepCollectionEquality().equals(other.links, links));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(schemas),
      const DeepCollectionEquality().hash(responses),
      const DeepCollectionEquality().hash(parameters),
      const DeepCollectionEquality().hash(examples),
      const DeepCollectionEquality().hash(requestBodies),
      const DeepCollectionEquality().hash(headers),
      const DeepCollectionEquality().hash(securitySchemes),
      const DeepCollectionEquality().hash(links));

  @JsonKey(ignore: true)
  @override
  _$ComponentsCopyWith<_Components> get copyWith =>
      __$ComponentsCopyWithImpl<_Components>(this, _$identity);
}

abstract class _Components implements Components {
  const factory _Components(
      {required Map<String, SchemaObject> schemas,
      required Map<String, ResponseObject> responses,
      required Map<String, ParameterObject> parameters,
      required Map<String, ExampleObject> examples,
      required Map<String, RequestBodyObject> requestBodies,
      required Map<String, HeaderObject> headers,
      required Map<String, SecuritySchemeObject> securitySchemes,
      required Map<String, LinkObject> links}) = _$_Components;

  @override // An object to hold reusable Schema Objects.
  Map<String, SchemaObject> get schemas;
  @override // An object to hold reusable Response Objects.
  Map<String, ResponseObject> get responses;
  @override // An object to hold reusable Parameter Objects.
  Map<String, ParameterObject> get parameters;
  @override // An object to hold reusable Example Objects.
  Map<String, ExampleObject> get examples;
  @override // An object to hold reusable Request Body Objects.
  Map<String, RequestBodyObject> get requestBodies;
  @override // An object to hold reusable Header Objects.
  Map<String, HeaderObject> get headers;
  @override // An object to hold reusable Security Scheme Objects.
  Map<String, SecuritySchemeObject> get securitySchemes;
  @override // An object to hold reusable Link Objects.
  Map<String, LinkObject> get links;
  @override
  @JsonKey(ignore: true)
  _$ComponentsCopyWith<_Components> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SchemaTearOff {
  const _$SchemaTearOff();

  SchemaObject call(
      {String? type,
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
      Schema? items,
      Map<String, Schema>? properties}) {
    return SchemaObject(
      type: type,
      format: format,
      description: description,
      readOnly: readOnly,
      writeOnly: writeOnly,
      nullable: nullable,
      defaultValue: defaultValue,
      multipleOf: multipleOf,
      maximum: maximum,
      exclusiveMaximum: exclusiveMaximum,
      minimum: minimum,
      exclusiveMinimum: exclusiveMinimum,
      maxLength: maxLength,
      minLength: minLength,
      pattern: pattern,
      maxItems: maxItems,
      minItems: minItems,
      uniqueItems: uniqueItems,
      maxProperties: maxProperties,
      minProperties: minProperties,
      required: required,
      enumValues: enumValues,
      allOf: allOf,
      oneOf: oneOf,
      anyOf: anyOf,
      not: not,
      items: items,
      properties: properties,
    );
  }

  SchemaObjectRef ref({String? description, required String ref}) {
    return SchemaObjectRef(
      description: description,
      ref: ref,
    );
  }
}

/// @nodoc
const $Schema = _$SchemaTearOff();

/// @nodoc
mixin _$Schema {
  String? get description => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
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
            Schema? items,
            Map<String, Schema>? properties)
        $default, {
    required TResult Function(String? description, String ref) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
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
            Schema? items,
            Map<String, Schema>? properties)?
        $default, {
    TResult Function(String? description, String ref)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
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
            Schema? items,
            Map<String, Schema>? properties)?
        $default, {
    TResult Function(String? description, String ref)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SchemaObject value) $default, {
    required TResult Function(SchemaObjectRef value) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SchemaObject value)? $default, {
    TResult Function(SchemaObjectRef value)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SchemaObject value)? $default, {
    TResult Function(SchemaObjectRef value)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchemaCopyWith<Schema> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemaCopyWith<$Res> {
  factory $SchemaCopyWith(Schema value, $Res Function(Schema) then) =
      _$SchemaCopyWithImpl<$Res>;
  $Res call({String? description});
}

/// @nodoc
class _$SchemaCopyWithImpl<$Res> implements $SchemaCopyWith<$Res> {
  _$SchemaCopyWithImpl(this._value, this._then);

  final Schema _value;
  // ignore: unused_field
  final $Res Function(Schema) _then;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $SchemaObjectCopyWith<$Res> implements $SchemaCopyWith<$Res> {
  factory $SchemaObjectCopyWith(
          SchemaObject value, $Res Function(SchemaObject) then) =
      _$SchemaObjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? type,
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
      Schema? items,
      Map<String, Schema>? properties});

  $SchemaCopyWith<$Res>? get not;
  $SchemaCopyWith<$Res>? get items;
}

/// @nodoc
class _$SchemaObjectCopyWithImpl<$Res> extends _$SchemaCopyWithImpl<$Res>
    implements $SchemaObjectCopyWith<$Res> {
  _$SchemaObjectCopyWithImpl(
      SchemaObject _value, $Res Function(SchemaObject) _then)
      : super(_value, (v) => _then(v as SchemaObject));

  @override
  SchemaObject get _value => super._value as SchemaObject;

  @override
  $Res call({
    Object? type = freezed,
    Object? format = freezed,
    Object? description = freezed,
    Object? readOnly = freezed,
    Object? writeOnly = freezed,
    Object? nullable = freezed,
    Object? defaultValue = freezed,
    Object? multipleOf = freezed,
    Object? maximum = freezed,
    Object? exclusiveMaximum = freezed,
    Object? minimum = freezed,
    Object? exclusiveMinimum = freezed,
    Object? maxLength = freezed,
    Object? minLength = freezed,
    Object? pattern = freezed,
    Object? maxItems = freezed,
    Object? minItems = freezed,
    Object? uniqueItems = freezed,
    Object? maxProperties = freezed,
    Object? minProperties = freezed,
    Object? required = freezed,
    Object? enumValues = freezed,
    Object? allOf = freezed,
    Object? oneOf = freezed,
    Object? anyOf = freezed,
    Object? not = freezed,
    Object? items = freezed,
    Object? properties = freezed,
  }) {
    return _then(SchemaObject(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      readOnly: readOnly == freezed
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      writeOnly: writeOnly == freezed
          ? _value.writeOnly
          : writeOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      nullable: nullable == freezed
          ? _value.nullable
          : nullable // ignore: cast_nullable_to_non_nullable
              as bool?,
      defaultValue:
          defaultValue == freezed ? _value.defaultValue : defaultValue,
      multipleOf: multipleOf == freezed
          ? _value.multipleOf
          : multipleOf // ignore: cast_nullable_to_non_nullable
              as num?,
      maximum: maximum == freezed
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as num?,
      exclusiveMaximum: exclusiveMaximum == freezed
          ? _value.exclusiveMaximum
          : exclusiveMaximum // ignore: cast_nullable_to_non_nullable
              as bool?,
      minimum: minimum == freezed
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as num?,
      exclusiveMinimum: exclusiveMinimum == freezed
          ? _value.exclusiveMinimum
          : exclusiveMinimum // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      minLength: minLength == freezed
          ? _value.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int?,
      pattern: pattern == freezed
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
      maxItems: maxItems == freezed
          ? _value.maxItems
          : maxItems // ignore: cast_nullable_to_non_nullable
              as int?,
      minItems: minItems == freezed
          ? _value.minItems
          : minItems // ignore: cast_nullable_to_non_nullable
              as int?,
      uniqueItems: uniqueItems == freezed
          ? _value.uniqueItems
          : uniqueItems // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxProperties: maxProperties == freezed
          ? _value.maxProperties
          : maxProperties // ignore: cast_nullable_to_non_nullable
              as int?,
      minProperties: minProperties == freezed
          ? _value.minProperties
          : minProperties // ignore: cast_nullable_to_non_nullable
              as int?,
      required: required == freezed
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      enumValues: enumValues == freezed
          ? _value.enumValues
          : enumValues // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      allOf: allOf == freezed
          ? _value.allOf
          : allOf // ignore: cast_nullable_to_non_nullable
              as List<Schema>?,
      oneOf: oneOf == freezed
          ? _value.oneOf
          : oneOf // ignore: cast_nullable_to_non_nullable
              as List<Schema>?,
      anyOf: anyOf == freezed
          ? _value.anyOf
          : anyOf // ignore: cast_nullable_to_non_nullable
              as List<Schema>?,
      not: not == freezed
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as Schema?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Schema?,
      properties: properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, Schema>?,
    ));
  }

  @override
  $SchemaCopyWith<$Res>? get not {
    if (_value.not == null) {
      return null;
    }

    return $SchemaCopyWith<$Res>(_value.not!, (value) {
      return _then(_value.copyWith(not: value));
    });
  }

  @override
  $SchemaCopyWith<$Res>? get items {
    if (_value.items == null) {
      return null;
    }

    return $SchemaCopyWith<$Res>(_value.items!, (value) {
      return _then(_value.copyWith(items: value));
    });
  }
}

/// @nodoc

class _$SchemaObject implements SchemaObject {
  const _$SchemaObject(
      {this.type,
      this.format,
      this.description,
      this.readOnly,
      this.writeOnly,
      this.nullable,
      this.defaultValue,
      this.multipleOf,
      this.maximum,
      this.exclusiveMaximum,
      this.minimum,
      this.exclusiveMinimum,
      this.maxLength,
      this.minLength,
      this.pattern,
      this.maxItems,
      this.minItems,
      this.uniqueItems,
      this.maxProperties,
      this.minProperties,
      this.required,
      this.enumValues,
      this.allOf,
      this.oneOf,
      this.anyOf,
      this.not,
      this.items,
      this.properties});

  @override
  final String? type;
  @override
  final String? format;
  @override
  final String? description;
  @override
  final bool? readOnly;
  @override
  final bool? writeOnly;
  @override
  final bool? nullable;
  @override
  final Object? defaultValue;
  @override
  final num? multipleOf;
  @override
  final num? maximum;
  @override
  final bool? exclusiveMaximum;
  @override
  final num? minimum;
  @override
  final bool? exclusiveMinimum;
  @override
  final int? maxLength;
  @override
  final int? minLength;
  @override
  final String? pattern;
  @override
  final int? maxItems;
  @override
  final int? minItems;
  @override
  final bool? uniqueItems;
  @override
  final int? maxProperties;
  @override
  final int? minProperties;
  @override
  final List<String>? required;
  @override
  final List<String>? enumValues;
  @override
  final List<Schema>? allOf;
  @override
  final List<Schema>? oneOf;
  @override
  final List<Schema>? anyOf;
  @override
  final Schema? not;
  @override // present if the type is array.
  final Schema? items;
  @override
  final Map<String, Schema>? properties;

  @override
  String toString() {
    return 'Schema(type: $type, format: $format, description: $description, readOnly: $readOnly, writeOnly: $writeOnly, nullable: $nullable, defaultValue: $defaultValue, multipleOf: $multipleOf, maximum: $maximum, exclusiveMaximum: $exclusiveMaximum, minimum: $minimum, exclusiveMinimum: $exclusiveMinimum, maxLength: $maxLength, minLength: $minLength, pattern: $pattern, maxItems: $maxItems, minItems: $minItems, uniqueItems: $uniqueItems, maxProperties: $maxProperties, minProperties: $minProperties, required: $required, enumValues: $enumValues, allOf: $allOf, oneOf: $oneOf, anyOf: $anyOf, not: $not, items: $items, properties: $properties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SchemaObject &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.format, format) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.readOnly, readOnly) &&
            const DeepCollectionEquality().equals(other.writeOnly, writeOnly) &&
            const DeepCollectionEquality().equals(other.nullable, nullable) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            const DeepCollectionEquality()
                .equals(other.multipleOf, multipleOf) &&
            const DeepCollectionEquality().equals(other.maximum, maximum) &&
            const DeepCollectionEquality()
                .equals(other.exclusiveMaximum, exclusiveMaximum) &&
            const DeepCollectionEquality().equals(other.minimum, minimum) &&
            const DeepCollectionEquality()
                .equals(other.exclusiveMinimum, exclusiveMinimum) &&
            const DeepCollectionEquality().equals(other.maxLength, maxLength) &&
            const DeepCollectionEquality().equals(other.minLength, minLength) &&
            const DeepCollectionEquality().equals(other.pattern, pattern) &&
            const DeepCollectionEquality().equals(other.maxItems, maxItems) &&
            const DeepCollectionEquality().equals(other.minItems, minItems) &&
            const DeepCollectionEquality()
                .equals(other.uniqueItems, uniqueItems) &&
            const DeepCollectionEquality()
                .equals(other.maxProperties, maxProperties) &&
            const DeepCollectionEquality()
                .equals(other.minProperties, minProperties) &&
            const DeepCollectionEquality().equals(other.required, required) &&
            const DeepCollectionEquality()
                .equals(other.enumValues, enumValues) &&
            const DeepCollectionEquality().equals(other.allOf, allOf) &&
            const DeepCollectionEquality().equals(other.oneOf, oneOf) &&
            const DeepCollectionEquality().equals(other.anyOf, anyOf) &&
            const DeepCollectionEquality().equals(other.not, not) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality()
                .equals(other.properties, properties));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(format),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(readOnly),
        const DeepCollectionEquality().hash(writeOnly),
        const DeepCollectionEquality().hash(nullable),
        const DeepCollectionEquality().hash(defaultValue),
        const DeepCollectionEquality().hash(multipleOf),
        const DeepCollectionEquality().hash(maximum),
        const DeepCollectionEquality().hash(exclusiveMaximum),
        const DeepCollectionEquality().hash(minimum),
        const DeepCollectionEquality().hash(exclusiveMinimum),
        const DeepCollectionEquality().hash(maxLength),
        const DeepCollectionEquality().hash(minLength),
        const DeepCollectionEquality().hash(pattern),
        const DeepCollectionEquality().hash(maxItems),
        const DeepCollectionEquality().hash(minItems),
        const DeepCollectionEquality().hash(uniqueItems),
        const DeepCollectionEquality().hash(maxProperties),
        const DeepCollectionEquality().hash(minProperties),
        const DeepCollectionEquality().hash(required),
        const DeepCollectionEquality().hash(enumValues),
        const DeepCollectionEquality().hash(allOf),
        const DeepCollectionEquality().hash(oneOf),
        const DeepCollectionEquality().hash(anyOf),
        const DeepCollectionEquality().hash(not),
        const DeepCollectionEquality().hash(items),
        const DeepCollectionEquality().hash(properties)
      ]);

  @JsonKey(ignore: true)
  @override
  $SchemaObjectCopyWith<SchemaObject> get copyWith =>
      _$SchemaObjectCopyWithImpl<SchemaObject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
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
            Schema? items,
            Map<String, Schema>? properties)
        $default, {
    required TResult Function(String? description, String ref) ref,
  }) {
    return $default(
        type,
        format,
        description,
        readOnly,
        writeOnly,
        nullable,
        defaultValue,
        multipleOf,
        maximum,
        exclusiveMaximum,
        minimum,
        exclusiveMinimum,
        maxLength,
        minLength,
        pattern,
        maxItems,
        minItems,
        uniqueItems,
        maxProperties,
        minProperties,
        required,
        enumValues,
        allOf,
        oneOf,
        anyOf,
        not,
        items,
        properties);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
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
            Schema? items,
            Map<String, Schema>? properties)?
        $default, {
    TResult Function(String? description, String ref)? ref,
  }) {
    return $default?.call(
        type,
        format,
        description,
        readOnly,
        writeOnly,
        nullable,
        defaultValue,
        multipleOf,
        maximum,
        exclusiveMaximum,
        minimum,
        exclusiveMinimum,
        maxLength,
        minLength,
        pattern,
        maxItems,
        minItems,
        uniqueItems,
        maxProperties,
        minProperties,
        required,
        enumValues,
        allOf,
        oneOf,
        anyOf,
        not,
        items,
        properties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
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
            Schema? items,
            Map<String, Schema>? properties)?
        $default, {
    TResult Function(String? description, String ref)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          type,
          format,
          description,
          readOnly,
          writeOnly,
          nullable,
          defaultValue,
          multipleOf,
          maximum,
          exclusiveMaximum,
          minimum,
          exclusiveMinimum,
          maxLength,
          minLength,
          pattern,
          maxItems,
          minItems,
          uniqueItems,
          maxProperties,
          minProperties,
          required,
          enumValues,
          allOf,
          oneOf,
          anyOf,
          not,
          items,
          properties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SchemaObject value) $default, {
    required TResult Function(SchemaObjectRef value) ref,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SchemaObject value)? $default, {
    TResult Function(SchemaObjectRef value)? ref,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SchemaObject value)? $default, {
    TResult Function(SchemaObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SchemaObject implements Schema {
  const factory SchemaObject(
      {String? type,
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
      Schema? items,
      Map<String, Schema>? properties}) = _$SchemaObject;

  String? get type;
  String? get format;
  @override
  String? get description;
  bool? get readOnly;
  bool? get writeOnly;
  bool? get nullable;
  Object? get defaultValue;
  num? get multipleOf;
  num? get maximum;
  bool? get exclusiveMaximum;
  num? get minimum;
  bool? get exclusiveMinimum;
  int? get maxLength;
  int? get minLength;
  String? get pattern;
  int? get maxItems;
  int? get minItems;
  bool? get uniqueItems;
  int? get maxProperties;
  int? get minProperties;
  List<String>? get required;
  List<String>? get enumValues;
  List<Schema>? get allOf;
  List<Schema>? get oneOf;
  List<Schema>? get anyOf;
  Schema? get not; // present if the type is array.
  Schema? get items;
  Map<String, Schema>? get properties;
  @override
  @JsonKey(ignore: true)
  $SchemaObjectCopyWith<SchemaObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemaObjectRefCopyWith<$Res> implements $SchemaCopyWith<$Res> {
  factory $SchemaObjectRefCopyWith(
          SchemaObjectRef value, $Res Function(SchemaObjectRef) then) =
      _$SchemaObjectRefCopyWithImpl<$Res>;
  @override
  $Res call({String? description, String ref});
}

/// @nodoc
class _$SchemaObjectRefCopyWithImpl<$Res> extends _$SchemaCopyWithImpl<$Res>
    implements $SchemaObjectRefCopyWith<$Res> {
  _$SchemaObjectRefCopyWithImpl(
      SchemaObjectRef _value, $Res Function(SchemaObjectRef) _then)
      : super(_value, (v) => _then(v as SchemaObjectRef));

  @override
  SchemaObjectRef get _value => super._value as SchemaObjectRef;

  @override
  $Res call({
    Object? description = freezed,
    Object? ref = freezed,
  }) {
    return _then(SchemaObjectRef(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SchemaObjectRef implements SchemaObjectRef {
  const _$SchemaObjectRef({this.description, required this.ref});

  @override
  final String? description;
  @override
  final String ref;

  @override
  String toString() {
    return 'Schema.ref(description: $description, ref: $ref)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SchemaObjectRef &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.ref, ref));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(ref));

  @JsonKey(ignore: true)
  @override
  $SchemaObjectRefCopyWith<SchemaObjectRef> get copyWith =>
      _$SchemaObjectRefCopyWithImpl<SchemaObjectRef>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
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
            Schema? items,
            Map<String, Schema>? properties)
        $default, {
    required TResult Function(String? description, String ref) ref,
  }) {
    return ref(description, this.ref);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
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
            Schema? items,
            Map<String, Schema>? properties)?
        $default, {
    TResult Function(String? description, String ref)? ref,
  }) {
    return ref?.call(description, this.ref);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
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
            Schema? items,
            Map<String, Schema>? properties)?
        $default, {
    TResult Function(String? description, String ref)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(description, this.ref);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SchemaObject value) $default, {
    required TResult Function(SchemaObjectRef value) ref,
  }) {
    return ref(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SchemaObject value)? $default, {
    TResult Function(SchemaObjectRef value)? ref,
  }) {
    return ref?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SchemaObject value)? $default, {
    TResult Function(SchemaObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this);
    }
    return orElse();
  }
}

abstract class SchemaObjectRef implements Schema {
  const factory SchemaObjectRef({String? description, required String ref}) =
      _$SchemaObjectRef;

  @override
  String? get description;
  String get ref;
  @override
  @JsonKey(ignore: true)
  $SchemaObjectRefCopyWith<SchemaObjectRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResponseTearOff {
  const _$ResponseTearOff();

  ResponseObject call(
      {required String description,
      Map<String, MediaType>? content,
      Map<String, Link>? links}) {
    return ResponseObject(
      description: description,
      content: content,
      links: links,
    );
  }

  ResponseObjectRef ref({required String ref}) {
    return ResponseObjectRef(
      ref: ref,
    );
  }
}

/// @nodoc
const $Response = _$ResponseTearOff();

/// @nodoc
mixin _$Response {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String description, Map<String, MediaType>? content,
            Map<String, Link>? links)
        $default, {
    required TResult Function(String ref) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String description, Map<String, MediaType>? content,
            Map<String, Link>? links)?
        $default, {
    TResult Function(String ref)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String description, Map<String, MediaType>? content,
            Map<String, Link>? links)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ResponseObject value) $default, {
    required TResult Function(ResponseObjectRef value) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ResponseObject value)? $default, {
    TResult Function(ResponseObjectRef value)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ResponseObject value)? $default, {
    TResult Function(ResponseObjectRef value)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res> implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  final Response _value;
  // ignore: unused_field
  final $Res Function(Response) _then;
}

/// @nodoc
abstract class $ResponseObjectCopyWith<$Res> {
  factory $ResponseObjectCopyWith(
          ResponseObject value, $Res Function(ResponseObject) then) =
      _$ResponseObjectCopyWithImpl<$Res>;
  $Res call(
      {String description,
      Map<String, MediaType>? content,
      Map<String, Link>? links});
}

/// @nodoc
class _$ResponseObjectCopyWithImpl<$Res> extends _$ResponseCopyWithImpl<$Res>
    implements $ResponseObjectCopyWith<$Res> {
  _$ResponseObjectCopyWithImpl(
      ResponseObject _value, $Res Function(ResponseObject) _then)
      : super(_value, (v) => _then(v as ResponseObject));

  @override
  ResponseObject get _value => super._value as ResponseObject;

  @override
  $Res call({
    Object? description = freezed,
    Object? content = freezed,
    Object? links = freezed,
  }) {
    return _then(ResponseObject(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Map<String, MediaType>?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, Link>?,
    ));
  }
}

/// @nodoc

class _$ResponseObject implements ResponseObject {
  const _$ResponseObject({required this.description, this.content, this.links});

  @override // A short description of the response.
  final String description;
  @override // A map containing descriptions of potential response payloads.
  final Map<String, MediaType>? content;
  @override // A map of operations links that can be followed from the response.
  final Map<String, Link>? links;

  @override
  String toString() {
    return 'Response(description: $description, content: $content, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseObject &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.links, links));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(links));

  @JsonKey(ignore: true)
  @override
  $ResponseObjectCopyWith<ResponseObject> get copyWith =>
      _$ResponseObjectCopyWithImpl<ResponseObject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String description, Map<String, MediaType>? content,
            Map<String, Link>? links)
        $default, {
    required TResult Function(String ref) ref,
  }) {
    return $default(description, content, links);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String description, Map<String, MediaType>? content,
            Map<String, Link>? links)?
        $default, {
    TResult Function(String ref)? ref,
  }) {
    return $default?.call(description, content, links);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String description, Map<String, MediaType>? content,
            Map<String, Link>? links)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(description, content, links);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ResponseObject value) $default, {
    required TResult Function(ResponseObjectRef value) ref,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ResponseObject value)? $default, {
    TResult Function(ResponseObjectRef value)? ref,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ResponseObject value)? $default, {
    TResult Function(ResponseObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ResponseObject implements Response {
  const factory ResponseObject(
      {required String description,
      Map<String, MediaType>? content,
      Map<String, Link>? links}) = _$ResponseObject;

// A short description of the response.
  String
      get description; // A map containing descriptions of potential response payloads.
  Map<String, MediaType>?
      get content; // A map of operations links that can be followed from the response.
  Map<String, Link>? get links;
  @JsonKey(ignore: true)
  $ResponseObjectCopyWith<ResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseObjectRefCopyWith<$Res> {
  factory $ResponseObjectRefCopyWith(
          ResponseObjectRef value, $Res Function(ResponseObjectRef) then) =
      _$ResponseObjectRefCopyWithImpl<$Res>;
  $Res call({String ref});
}

/// @nodoc
class _$ResponseObjectRefCopyWithImpl<$Res> extends _$ResponseCopyWithImpl<$Res>
    implements $ResponseObjectRefCopyWith<$Res> {
  _$ResponseObjectRefCopyWithImpl(
      ResponseObjectRef _value, $Res Function(ResponseObjectRef) _then)
      : super(_value, (v) => _then(v as ResponseObjectRef));

  @override
  ResponseObjectRef get _value => super._value as ResponseObjectRef;

  @override
  $Res call({
    Object? ref = freezed,
  }) {
    return _then(ResponseObjectRef(
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResponseObjectRef implements ResponseObjectRef {
  const _$ResponseObjectRef({required this.ref});

  @override
  final String ref;

  @override
  String toString() {
    return 'Response.ref(ref: $ref)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseObjectRef &&
            const DeepCollectionEquality().equals(other.ref, ref));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ref));

  @JsonKey(ignore: true)
  @override
  $ResponseObjectRefCopyWith<ResponseObjectRef> get copyWith =>
      _$ResponseObjectRefCopyWithImpl<ResponseObjectRef>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String description, Map<String, MediaType>? content,
            Map<String, Link>? links)
        $default, {
    required TResult Function(String ref) ref,
  }) {
    return ref(this.ref);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String description, Map<String, MediaType>? content,
            Map<String, Link>? links)?
        $default, {
    TResult Function(String ref)? ref,
  }) {
    return ref?.call(this.ref);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String description, Map<String, MediaType>? content,
            Map<String, Link>? links)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this.ref);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ResponseObject value) $default, {
    required TResult Function(ResponseObjectRef value) ref,
  }) {
    return ref(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ResponseObject value)? $default, {
    TResult Function(ResponseObjectRef value)? ref,
  }) {
    return ref?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ResponseObject value)? $default, {
    TResult Function(ResponseObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this);
    }
    return orElse();
  }
}

abstract class ResponseObjectRef implements Response {
  const factory ResponseObjectRef({required String ref}) = _$ResponseObjectRef;

  String get ref;
  @JsonKey(ignore: true)
  $ResponseObjectRefCopyWith<ResponseObjectRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ParameterTearOff {
  const _$ParameterTearOff();

  ParameterObject call(
      {required String name,
      required String in_,
      String? description,
      bool required = false,
      bool deprecated = false,
      bool allowEmptyValue = false,
      String? style,
      bool explode = false,
      bool allowReserved = false,
      required SchemaObject schema}) {
    return ParameterObject(
      name: name,
      in_: in_,
      description: description,
      required: required,
      deprecated: deprecated,
      allowEmptyValue: allowEmptyValue,
      style: style,
      explode: explode,
      allowReserved: allowReserved,
      schema: schema,
    );
  }

  ParameterObjectRef ref({required String ref}) {
    return ParameterObjectRef(
      ref: ref,
    );
  }
}

/// @nodoc
const $Parameter = _$ParameterTearOff();

/// @nodoc
mixin _$Parameter {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String name,
            String in_,
            String? description,
            bool required,
            bool deprecated,
            bool allowEmptyValue,
            String? style,
            bool explode,
            bool allowReserved,
            SchemaObject schema)
        $default, {
    required TResult Function(String ref) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String name,
            String in_,
            String? description,
            bool required,
            bool deprecated,
            bool allowEmptyValue,
            String? style,
            bool explode,
            bool allowReserved,
            SchemaObject schema)?
        $default, {
    TResult Function(String ref)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String name,
            String in_,
            String? description,
            bool required,
            bool deprecated,
            bool allowEmptyValue,
            String? style,
            bool explode,
            bool allowReserved,
            SchemaObject schema)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ParameterObject value) $default, {
    required TResult Function(ParameterObjectRef value) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ParameterObject value)? $default, {
    TResult Function(ParameterObjectRef value)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ParameterObject value)? $default, {
    TResult Function(ParameterObjectRef value)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParameterCopyWith<$Res> {
  factory $ParameterCopyWith(Parameter value, $Res Function(Parameter) then) =
      _$ParameterCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParameterCopyWithImpl<$Res> implements $ParameterCopyWith<$Res> {
  _$ParameterCopyWithImpl(this._value, this._then);

  final Parameter _value;
  // ignore: unused_field
  final $Res Function(Parameter) _then;
}

/// @nodoc
abstract class $ParameterObjectCopyWith<$Res> {
  factory $ParameterObjectCopyWith(
          ParameterObject value, $Res Function(ParameterObject) then) =
      _$ParameterObjectCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String in_,
      String? description,
      bool required,
      bool deprecated,
      bool allowEmptyValue,
      String? style,
      bool explode,
      bool allowReserved,
      SchemaObject schema});
}

/// @nodoc
class _$ParameterObjectCopyWithImpl<$Res> extends _$ParameterCopyWithImpl<$Res>
    implements $ParameterObjectCopyWith<$Res> {
  _$ParameterObjectCopyWithImpl(
      ParameterObject _value, $Res Function(ParameterObject) _then)
      : super(_value, (v) => _then(v as ParameterObject));

  @override
  ParameterObject get _value => super._value as ParameterObject;

  @override
  $Res call({
    Object? name = freezed,
    Object? in_ = freezed,
    Object? description = freezed,
    Object? required = freezed,
    Object? deprecated = freezed,
    Object? allowEmptyValue = freezed,
    Object? style = freezed,
    Object? explode = freezed,
    Object? allowReserved = freezed,
    Object? schema = freezed,
  }) {
    return _then(ParameterObject(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      in_: in_ == freezed
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      required: required == freezed
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      deprecated: deprecated == freezed
          ? _value.deprecated
          : deprecated // ignore: cast_nullable_to_non_nullable
              as bool,
      allowEmptyValue: allowEmptyValue == freezed
          ? _value.allowEmptyValue
          : allowEmptyValue // ignore: cast_nullable_to_non_nullable
              as bool,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String?,
      explode: explode == freezed
          ? _value.explode
          : explode // ignore: cast_nullable_to_non_nullable
              as bool,
      allowReserved: allowReserved == freezed
          ? _value.allowReserved
          : allowReserved // ignore: cast_nullable_to_non_nullable
              as bool,
      schema: schema == freezed
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as SchemaObject,
    ));
  }
}

/// @nodoc

class _$ParameterObject implements ParameterObject {
  const _$ParameterObject(
      {required this.name,
      required this.in_,
      this.description,
      this.required = false,
      this.deprecated = false,
      this.allowEmptyValue = false,
      this.style,
      this.explode = false,
      this.allowReserved = false,
      required this.schema});

  @override // The name of the parameter.
  final String name;
  @override // The location of the parameter.
// Possible values are "path", "query", "header", or "cookie".
  final String in_;
  @override // A brief description of the parameter.
  final String? description;
  @JsonKey()
  @override // Determines whether this parameter is mandatory.
  final bool required;
  @JsonKey()
  @override // Specifies that a parameter is deprecated.
  final bool deprecated;
  @JsonKey()
  @override // Sets the ability to pass empty-valued parameters.
  final bool allowEmptyValue;
  @override // Describes how the parameter value will be serialized depending on the
// type of the parameter value.
  final String? style;
  @JsonKey()
  @override // Allows multiple values to be submitted.
  final bool explode;
  @JsonKey()
  @override // Determines whether the parameter value allow reserved characters, as
// `:/?#[]@!$&'()*+,;=` to be included without percent-encoding.
// This property only applies to parameters with an "in" value of "query".
  final bool allowReserved;
  @override // The schema defining the type used for the parameter.
  final SchemaObject schema;

  @override
  String toString() {
    return 'Parameter(name: $name, in_: $in_, description: $description, required: $required, deprecated: $deprecated, allowEmptyValue: $allowEmptyValue, style: $style, explode: $explode, allowReserved: $allowReserved, schema: $schema)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParameterObject &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.in_, in_) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.required, required) &&
            const DeepCollectionEquality()
                .equals(other.deprecated, deprecated) &&
            const DeepCollectionEquality()
                .equals(other.allowEmptyValue, allowEmptyValue) &&
            const DeepCollectionEquality().equals(other.style, style) &&
            const DeepCollectionEquality().equals(other.explode, explode) &&
            const DeepCollectionEquality()
                .equals(other.allowReserved, allowReserved) &&
            const DeepCollectionEquality().equals(other.schema, schema));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(in_),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(required),
      const DeepCollectionEquality().hash(deprecated),
      const DeepCollectionEquality().hash(allowEmptyValue),
      const DeepCollectionEquality().hash(style),
      const DeepCollectionEquality().hash(explode),
      const DeepCollectionEquality().hash(allowReserved),
      const DeepCollectionEquality().hash(schema));

  @JsonKey(ignore: true)
  @override
  $ParameterObjectCopyWith<ParameterObject> get copyWith =>
      _$ParameterObjectCopyWithImpl<ParameterObject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String name,
            String in_,
            String? description,
            bool required,
            bool deprecated,
            bool allowEmptyValue,
            String? style,
            bool explode,
            bool allowReserved,
            SchemaObject schema)
        $default, {
    required TResult Function(String ref) ref,
  }) {
    return $default(name, in_, description, required, deprecated,
        allowEmptyValue, style, explode, allowReserved, schema);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String name,
            String in_,
            String? description,
            bool required,
            bool deprecated,
            bool allowEmptyValue,
            String? style,
            bool explode,
            bool allowReserved,
            SchemaObject schema)?
        $default, {
    TResult Function(String ref)? ref,
  }) {
    return $default?.call(name, in_, description, required, deprecated,
        allowEmptyValue, style, explode, allowReserved, schema);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String name,
            String in_,
            String? description,
            bool required,
            bool deprecated,
            bool allowEmptyValue,
            String? style,
            bool explode,
            bool allowReserved,
            SchemaObject schema)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, in_, description, required, deprecated,
          allowEmptyValue, style, explode, allowReserved, schema);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ParameterObject value) $default, {
    required TResult Function(ParameterObjectRef value) ref,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ParameterObject value)? $default, {
    TResult Function(ParameterObjectRef value)? ref,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ParameterObject value)? $default, {
    TResult Function(ParameterObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ParameterObject implements Parameter {
  const factory ParameterObject(
      {required String name,
      required String in_,
      String? description,
      bool required,
      bool deprecated,
      bool allowEmptyValue,
      String? style,
      bool explode,
      bool allowReserved,
      required SchemaObject schema}) = _$ParameterObject;

// The name of the parameter.
  String get name; // The location of the parameter.
// Possible values are "path", "query", "header", or "cookie".
  String get in_; // A brief description of the parameter.
  String? get description; // Determines whether this parameter is mandatory.
  bool get required; // Specifies that a parameter is deprecated.
  bool get deprecated; // Sets the ability to pass empty-valued parameters.
  bool
      get allowEmptyValue; // Describes how the parameter value will be serialized depending on the
// type of the parameter value.
  String? get style; // Allows multiple values to be submitted.
  bool
      get explode; // Determines whether the parameter value allow reserved characters, as
// `:/?#[]@!$&'()*+,;=` to be included without percent-encoding.
// This property only applies to parameters with an "in" value of "query".
  bool
      get allowReserved; // The schema defining the type used for the parameter.
  SchemaObject get schema;
  @JsonKey(ignore: true)
  $ParameterObjectCopyWith<ParameterObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParameterObjectRefCopyWith<$Res> {
  factory $ParameterObjectRefCopyWith(
          ParameterObjectRef value, $Res Function(ParameterObjectRef) then) =
      _$ParameterObjectRefCopyWithImpl<$Res>;
  $Res call({String ref});
}

/// @nodoc
class _$ParameterObjectRefCopyWithImpl<$Res>
    extends _$ParameterCopyWithImpl<$Res>
    implements $ParameterObjectRefCopyWith<$Res> {
  _$ParameterObjectRefCopyWithImpl(
      ParameterObjectRef _value, $Res Function(ParameterObjectRef) _then)
      : super(_value, (v) => _then(v as ParameterObjectRef));

  @override
  ParameterObjectRef get _value => super._value as ParameterObjectRef;

  @override
  $Res call({
    Object? ref = freezed,
  }) {
    return _then(ParameterObjectRef(
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParameterObjectRef implements ParameterObjectRef {
  const _$ParameterObjectRef({required this.ref});

  @override
  final String ref;

  @override
  String toString() {
    return 'Parameter.ref(ref: $ref)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParameterObjectRef &&
            const DeepCollectionEquality().equals(other.ref, ref));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ref));

  @JsonKey(ignore: true)
  @override
  $ParameterObjectRefCopyWith<ParameterObjectRef> get copyWith =>
      _$ParameterObjectRefCopyWithImpl<ParameterObjectRef>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String name,
            String in_,
            String? description,
            bool required,
            bool deprecated,
            bool allowEmptyValue,
            String? style,
            bool explode,
            bool allowReserved,
            SchemaObject schema)
        $default, {
    required TResult Function(String ref) ref,
  }) {
    return ref(this.ref);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String name,
            String in_,
            String? description,
            bool required,
            bool deprecated,
            bool allowEmptyValue,
            String? style,
            bool explode,
            bool allowReserved,
            SchemaObject schema)?
        $default, {
    TResult Function(String ref)? ref,
  }) {
    return ref?.call(this.ref);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String name,
            String in_,
            String? description,
            bool required,
            bool deprecated,
            bool allowEmptyValue,
            String? style,
            bool explode,
            bool allowReserved,
            SchemaObject schema)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this.ref);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ParameterObject value) $default, {
    required TResult Function(ParameterObjectRef value) ref,
  }) {
    return ref(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ParameterObject value)? $default, {
    TResult Function(ParameterObjectRef value)? ref,
  }) {
    return ref?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ParameterObject value)? $default, {
    TResult Function(ParameterObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this);
    }
    return orElse();
  }
}

abstract class ParameterObjectRef implements Parameter {
  const factory ParameterObjectRef({required String ref}) =
      _$ParameterObjectRef;

  String get ref;
  @JsonKey(ignore: true)
  $ParameterObjectRefCopyWith<ParameterObjectRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExampleTearOff {
  const _$ExampleTearOff();

  ExampleObject call(
      {String? summary,
      String? description,
      dynamic value,
      String? externalValue}) {
    return ExampleObject(
      summary: summary,
      description: description,
      value: value,
      externalValue: externalValue,
    );
  }

  ExampleObjectRef ref({required String ref}) {
    return ExampleObjectRef(
      ref: ref,
    );
  }
}

/// @nodoc
const $Example = _$ExampleTearOff();

/// @nodoc
mixin _$Example {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? summary, String? description, dynamic value,
            String? externalValue)
        $default, {
    required TResult Function(String ref) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? summary, String? description, dynamic value,
            String? externalValue)?
        $default, {
    TResult Function(String ref)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? summary, String? description, dynamic value,
            String? externalValue)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ExampleObject value) $default, {
    required TResult Function(ExampleObjectRef value) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ExampleObject value)? $default, {
    TResult Function(ExampleObjectRef value)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ExampleObject value)? $default, {
    TResult Function(ExampleObjectRef value)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleCopyWith<$Res> {
  factory $ExampleCopyWith(Example value, $Res Function(Example) then) =
      _$ExampleCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExampleCopyWithImpl<$Res> implements $ExampleCopyWith<$Res> {
  _$ExampleCopyWithImpl(this._value, this._then);

  final Example _value;
  // ignore: unused_field
  final $Res Function(Example) _then;
}

/// @nodoc
abstract class $ExampleObjectCopyWith<$Res> {
  factory $ExampleObjectCopyWith(
          ExampleObject value, $Res Function(ExampleObject) then) =
      _$ExampleObjectCopyWithImpl<$Res>;
  $Res call(
      {String? summary,
      String? description,
      dynamic value,
      String? externalValue});
}

/// @nodoc
class _$ExampleObjectCopyWithImpl<$Res> extends _$ExampleCopyWithImpl<$Res>
    implements $ExampleObjectCopyWith<$Res> {
  _$ExampleObjectCopyWithImpl(
      ExampleObject _value, $Res Function(ExampleObject) _then)
      : super(_value, (v) => _then(v as ExampleObject));

  @override
  ExampleObject get _value => super._value as ExampleObject;

  @override
  $Res call({
    Object? summary = freezed,
    Object? description = freezed,
    Object? value = freezed,
    Object? externalValue = freezed,
  }) {
    return _then(ExampleObject(
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      externalValue: externalValue == freezed
          ? _value.externalValue
          : externalValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ExampleObject implements ExampleObject {
  const _$ExampleObject(
      {this.summary, this.description, this.value, this.externalValue});

  @override // Short description for the example.
  final String? summary;
  @override // Long description for the example.
  final String? description;
  @override // Embedded literal example.
  final dynamic value;
  @override // A URL that points to the literal example.
  final String? externalValue;

  @override
  String toString() {
    return 'Example(summary: $summary, description: $description, value: $value, externalValue: $externalValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExampleObject &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.externalValue, externalValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(externalValue));

  @JsonKey(ignore: true)
  @override
  $ExampleObjectCopyWith<ExampleObject> get copyWith =>
      _$ExampleObjectCopyWithImpl<ExampleObject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? summary, String? description, dynamic value,
            String? externalValue)
        $default, {
    required TResult Function(String ref) ref,
  }) {
    return $default(summary, description, value, externalValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? summary, String? description, dynamic value,
            String? externalValue)?
        $default, {
    TResult Function(String ref)? ref,
  }) {
    return $default?.call(summary, description, value, externalValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? summary, String? description, dynamic value,
            String? externalValue)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(summary, description, value, externalValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ExampleObject value) $default, {
    required TResult Function(ExampleObjectRef value) ref,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ExampleObject value)? $default, {
    TResult Function(ExampleObjectRef value)? ref,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ExampleObject value)? $default, {
    TResult Function(ExampleObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ExampleObject implements Example {
  const factory ExampleObject(
      {String? summary,
      String? description,
      dynamic value,
      String? externalValue}) = _$ExampleObject;

// Short description for the example.
  String? get summary; // Long description for the example.
  String? get description; // Embedded literal example.
  dynamic get value; // A URL that points to the literal example.
  String? get externalValue;
  @JsonKey(ignore: true)
  $ExampleObjectCopyWith<ExampleObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleObjectRefCopyWith<$Res> {
  factory $ExampleObjectRefCopyWith(
          ExampleObjectRef value, $Res Function(ExampleObjectRef) then) =
      _$ExampleObjectRefCopyWithImpl<$Res>;
  $Res call({String ref});
}

/// @nodoc
class _$ExampleObjectRefCopyWithImpl<$Res> extends _$ExampleCopyWithImpl<$Res>
    implements $ExampleObjectRefCopyWith<$Res> {
  _$ExampleObjectRefCopyWithImpl(
      ExampleObjectRef _value, $Res Function(ExampleObjectRef) _then)
      : super(_value, (v) => _then(v as ExampleObjectRef));

  @override
  ExampleObjectRef get _value => super._value as ExampleObjectRef;

  @override
  $Res call({
    Object? ref = freezed,
  }) {
    return _then(ExampleObjectRef(
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExampleObjectRef implements ExampleObjectRef {
  const _$ExampleObjectRef({required this.ref});

  @override
  final String ref;

  @override
  String toString() {
    return 'Example.ref(ref: $ref)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExampleObjectRef &&
            const DeepCollectionEquality().equals(other.ref, ref));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ref));

  @JsonKey(ignore: true)
  @override
  $ExampleObjectRefCopyWith<ExampleObjectRef> get copyWith =>
      _$ExampleObjectRefCopyWithImpl<ExampleObjectRef>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? summary, String? description, dynamic value,
            String? externalValue)
        $default, {
    required TResult Function(String ref) ref,
  }) {
    return ref(this.ref);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? summary, String? description, dynamic value,
            String? externalValue)?
        $default, {
    TResult Function(String ref)? ref,
  }) {
    return ref?.call(this.ref);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? summary, String? description, dynamic value,
            String? externalValue)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this.ref);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ExampleObject value) $default, {
    required TResult Function(ExampleObjectRef value) ref,
  }) {
    return ref(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ExampleObject value)? $default, {
    TResult Function(ExampleObjectRef value)? ref,
  }) {
    return ref?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ExampleObject value)? $default, {
    TResult Function(ExampleObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this);
    }
    return orElse();
  }
}

abstract class ExampleObjectRef implements Example {
  const factory ExampleObjectRef({required String ref}) = _$ExampleObjectRef;

  String get ref;
  @JsonKey(ignore: true)
  $ExampleObjectRefCopyWith<ExampleObjectRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RequestBodyTearOff {
  const _$RequestBodyTearOff();

  RequestBodyObject call(
      {String? description,
      required Map<String, MediaType> content,
      bool required = false}) {
    return RequestBodyObject(
      description: description,
      content: content,
      required: required,
    );
  }

  RequestBodyObjectRef ref({required String ref}) {
    return RequestBodyObjectRef(
      ref: ref,
    );
  }
}

/// @nodoc
const $RequestBody = _$RequestBodyTearOff();

/// @nodoc
mixin _$RequestBody {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? description, Map<String, MediaType> content, bool required)
        $default, {
    required TResult Function(String ref) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String? description, Map<String, MediaType> content, bool required)?
        $default, {
    TResult Function(String ref)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? description, Map<String, MediaType> content, bool required)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RequestBodyObject value) $default, {
    required TResult Function(RequestBodyObjectRef value) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(RequestBodyObject value)? $default, {
    TResult Function(RequestBodyObjectRef value)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RequestBodyObject value)? $default, {
    TResult Function(RequestBodyObjectRef value)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestBodyCopyWith<$Res> {
  factory $RequestBodyCopyWith(
          RequestBody value, $Res Function(RequestBody) then) =
      _$RequestBodyCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestBodyCopyWithImpl<$Res> implements $RequestBodyCopyWith<$Res> {
  _$RequestBodyCopyWithImpl(this._value, this._then);

  final RequestBody _value;
  // ignore: unused_field
  final $Res Function(RequestBody) _then;
}

/// @nodoc
abstract class $RequestBodyObjectCopyWith<$Res> {
  factory $RequestBodyObjectCopyWith(
          RequestBodyObject value, $Res Function(RequestBodyObject) then) =
      _$RequestBodyObjectCopyWithImpl<$Res>;
  $Res call(
      {String? description, Map<String, MediaType> content, bool required});
}

/// @nodoc
class _$RequestBodyObjectCopyWithImpl<$Res>
    extends _$RequestBodyCopyWithImpl<$Res>
    implements $RequestBodyObjectCopyWith<$Res> {
  _$RequestBodyObjectCopyWithImpl(
      RequestBodyObject _value, $Res Function(RequestBodyObject) _then)
      : super(_value, (v) => _then(v as RequestBodyObject));

  @override
  RequestBodyObject get _value => super._value as RequestBodyObject;

  @override
  $Res call({
    Object? description = freezed,
    Object? content = freezed,
    Object? required = freezed,
  }) {
    return _then(RequestBodyObject(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Map<String, MediaType>,
      required: required == freezed
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RequestBodyObject implements RequestBodyObject {
  const _$RequestBodyObject(
      {this.description, required this.content, this.required = false});

  @override // A brief description of the request body.
  final String? description;
  @override // The content of the request body.
  final Map<String, MediaType> content;
  @JsonKey()
  @override // Determines if the request body is required in the request.
  final bool required;

  @override
  String toString() {
    return 'RequestBody(description: $description, content: $content, required: $required)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestBodyObject &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  $RequestBodyObjectCopyWith<RequestBodyObject> get copyWith =>
      _$RequestBodyObjectCopyWithImpl<RequestBodyObject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? description, Map<String, MediaType> content, bool required)
        $default, {
    required TResult Function(String ref) ref,
  }) {
    return $default(description, content, required);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String? description, Map<String, MediaType> content, bool required)?
        $default, {
    TResult Function(String ref)? ref,
  }) {
    return $default?.call(description, content, required);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? description, Map<String, MediaType> content, bool required)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(description, content, required);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RequestBodyObject value) $default, {
    required TResult Function(RequestBodyObjectRef value) ref,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(RequestBodyObject value)? $default, {
    TResult Function(RequestBodyObjectRef value)? ref,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RequestBodyObject value)? $default, {
    TResult Function(RequestBodyObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RequestBodyObject implements RequestBody {
  const factory RequestBodyObject(
      {String? description,
      required Map<String, MediaType> content,
      bool required}) = _$RequestBodyObject;

// A brief description of the request body.
  String? get description; // The content of the request body.
  Map<String, MediaType>
      get content; // Determines if the request body is required in the request.
  bool get required;
  @JsonKey(ignore: true)
  $RequestBodyObjectCopyWith<RequestBodyObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestBodyObjectRefCopyWith<$Res> {
  factory $RequestBodyObjectRefCopyWith(RequestBodyObjectRef value,
          $Res Function(RequestBodyObjectRef) then) =
      _$RequestBodyObjectRefCopyWithImpl<$Res>;
  $Res call({String ref});
}

/// @nodoc
class _$RequestBodyObjectRefCopyWithImpl<$Res>
    extends _$RequestBodyCopyWithImpl<$Res>
    implements $RequestBodyObjectRefCopyWith<$Res> {
  _$RequestBodyObjectRefCopyWithImpl(
      RequestBodyObjectRef _value, $Res Function(RequestBodyObjectRef) _then)
      : super(_value, (v) => _then(v as RequestBodyObjectRef));

  @override
  RequestBodyObjectRef get _value => super._value as RequestBodyObjectRef;

  @override
  $Res call({
    Object? ref = freezed,
  }) {
    return _then(RequestBodyObjectRef(
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestBodyObjectRef implements RequestBodyObjectRef {
  const _$RequestBodyObjectRef({required this.ref});

  @override
  final String ref;

  @override
  String toString() {
    return 'RequestBody.ref(ref: $ref)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestBodyObjectRef &&
            const DeepCollectionEquality().equals(other.ref, ref));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ref));

  @JsonKey(ignore: true)
  @override
  $RequestBodyObjectRefCopyWith<RequestBodyObjectRef> get copyWith =>
      _$RequestBodyObjectRefCopyWithImpl<RequestBodyObjectRef>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? description, Map<String, MediaType> content, bool required)
        $default, {
    required TResult Function(String ref) ref,
  }) {
    return ref(this.ref);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String? description, Map<String, MediaType> content, bool required)?
        $default, {
    TResult Function(String ref)? ref,
  }) {
    return ref?.call(this.ref);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? description, Map<String, MediaType> content, bool required)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this.ref);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RequestBodyObject value) $default, {
    required TResult Function(RequestBodyObjectRef value) ref,
  }) {
    return ref(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(RequestBodyObject value)? $default, {
    TResult Function(RequestBodyObjectRef value)? ref,
  }) {
    return ref?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RequestBodyObject value)? $default, {
    TResult Function(RequestBodyObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this);
    }
    return orElse();
  }
}

abstract class RequestBodyObjectRef implements RequestBody {
  const factory RequestBodyObjectRef({required String ref}) =
      _$RequestBodyObjectRef;

  String get ref;
  @JsonKey(ignore: true)
  $RequestBodyObjectRefCopyWith<RequestBodyObjectRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HeaderTearOff {
  const _$HeaderTearOff();

  HeaderObject call({String? description, required SchemaObject schema}) {
    return HeaderObject(
      description: description,
      schema: schema,
    );
  }

  HeaderObjectRef ref({required String ref}) {
    return HeaderObjectRef(
      ref: ref,
    );
  }
}

/// @nodoc
const $Header = _$HeaderTearOff();

/// @nodoc
mixin _$Header {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? description, SchemaObject schema) $default, {
    required TResult Function(String ref) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? description, SchemaObject schema)? $default, {
    TResult Function(String ref)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? description, SchemaObject schema)? $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(HeaderObject value) $default, {
    required TResult Function(HeaderObjectRef value) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(HeaderObject value)? $default, {
    TResult Function(HeaderObjectRef value)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(HeaderObject value)? $default, {
    TResult Function(HeaderObjectRef value)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderCopyWith<$Res> {
  factory $HeaderCopyWith(Header value, $Res Function(Header) then) =
      _$HeaderCopyWithImpl<$Res>;
}

/// @nodoc
class _$HeaderCopyWithImpl<$Res> implements $HeaderCopyWith<$Res> {
  _$HeaderCopyWithImpl(this._value, this._then);

  final Header _value;
  // ignore: unused_field
  final $Res Function(Header) _then;
}

/// @nodoc
abstract class $HeaderObjectCopyWith<$Res> {
  factory $HeaderObjectCopyWith(
          HeaderObject value, $Res Function(HeaderObject) then) =
      _$HeaderObjectCopyWithImpl<$Res>;
  $Res call({String? description, SchemaObject schema});
}

/// @nodoc
class _$HeaderObjectCopyWithImpl<$Res> extends _$HeaderCopyWithImpl<$Res>
    implements $HeaderObjectCopyWith<$Res> {
  _$HeaderObjectCopyWithImpl(
      HeaderObject _value, $Res Function(HeaderObject) _then)
      : super(_value, (v) => _then(v as HeaderObject));

  @override
  HeaderObject get _value => super._value as HeaderObject;

  @override
  $Res call({
    Object? description = freezed,
    Object? schema = freezed,
  }) {
    return _then(HeaderObject(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      schema: schema == freezed
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as SchemaObject,
    ));
  }
}

/// @nodoc

class _$HeaderObject implements HeaderObject {
  const _$HeaderObject({this.description, required this.schema});

  @override // A brief description of the header.
  final String? description;
  @override // The schema defining the type used for the header.
  final SchemaObject schema;

  @override
  String toString() {
    return 'Header(description: $description, schema: $schema)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HeaderObject &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.schema, schema));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(schema));

  @JsonKey(ignore: true)
  @override
  $HeaderObjectCopyWith<HeaderObject> get copyWith =>
      _$HeaderObjectCopyWithImpl<HeaderObject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? description, SchemaObject schema) $default, {
    required TResult Function(String ref) ref,
  }) {
    return $default(description, schema);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? description, SchemaObject schema)? $default, {
    TResult Function(String ref)? ref,
  }) {
    return $default?.call(description, schema);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? description, SchemaObject schema)? $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(description, schema);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(HeaderObject value) $default, {
    required TResult Function(HeaderObjectRef value) ref,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(HeaderObject value)? $default, {
    TResult Function(HeaderObjectRef value)? ref,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(HeaderObject value)? $default, {
    TResult Function(HeaderObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class HeaderObject implements Header {
  const factory HeaderObject(
      {String? description, required SchemaObject schema}) = _$HeaderObject;

// A brief description of the header.
  String? get description; // The schema defining the type used for the header.
  SchemaObject get schema;
  @JsonKey(ignore: true)
  $HeaderObjectCopyWith<HeaderObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderObjectRefCopyWith<$Res> {
  factory $HeaderObjectRefCopyWith(
          HeaderObjectRef value, $Res Function(HeaderObjectRef) then) =
      _$HeaderObjectRefCopyWithImpl<$Res>;
  $Res call({String ref});
}

/// @nodoc
class _$HeaderObjectRefCopyWithImpl<$Res> extends _$HeaderCopyWithImpl<$Res>
    implements $HeaderObjectRefCopyWith<$Res> {
  _$HeaderObjectRefCopyWithImpl(
      HeaderObjectRef _value, $Res Function(HeaderObjectRef) _then)
      : super(_value, (v) => _then(v as HeaderObjectRef));

  @override
  HeaderObjectRef get _value => super._value as HeaderObjectRef;

  @override
  $Res call({
    Object? ref = freezed,
  }) {
    return _then(HeaderObjectRef(
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HeaderObjectRef implements HeaderObjectRef {
  const _$HeaderObjectRef({required this.ref});

  @override
  final String ref;

  @override
  String toString() {
    return 'Header.ref(ref: $ref)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HeaderObjectRef &&
            const DeepCollectionEquality().equals(other.ref, ref));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ref));

  @JsonKey(ignore: true)
  @override
  $HeaderObjectRefCopyWith<HeaderObjectRef> get copyWith =>
      _$HeaderObjectRefCopyWithImpl<HeaderObjectRef>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? description, SchemaObject schema) $default, {
    required TResult Function(String ref) ref,
  }) {
    return ref(this.ref);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? description, SchemaObject schema)? $default, {
    TResult Function(String ref)? ref,
  }) {
    return ref?.call(this.ref);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? description, SchemaObject schema)? $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this.ref);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(HeaderObject value) $default, {
    required TResult Function(HeaderObjectRef value) ref,
  }) {
    return ref(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(HeaderObject value)? $default, {
    TResult Function(HeaderObjectRef value)? ref,
  }) {
    return ref?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(HeaderObject value)? $default, {
    TResult Function(HeaderObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this);
    }
    return orElse();
  }
}

abstract class HeaderObjectRef implements Header {
  const factory HeaderObjectRef({required String ref}) = _$HeaderObjectRef;

  String get ref;
  @JsonKey(ignore: true)
  $HeaderObjectRefCopyWith<HeaderObjectRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SecuritySchemeTearOff {
  const _$SecuritySchemeTearOff();

  SecuritySchemeObject call(
      {required String type,
      String? description,
      String? name,
      String? in_,
      String? scheme,
      String? bearerFormat}) {
    return SecuritySchemeObject(
      type: type,
      description: description,
      name: name,
      in_: in_,
      scheme: scheme,
      bearerFormat: bearerFormat,
    );
  }

  SecuritySchemeObjectRef ref({required String ref}) {
    return SecuritySchemeObjectRef(
      ref: ref,
    );
  }
}

/// @nodoc
const $SecurityScheme = _$SecuritySchemeTearOff();

/// @nodoc
mixin _$SecurityScheme {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String type, String? description, String? name,
            String? in_, String? scheme, String? bearerFormat)
        $default, {
    required TResult Function(String ref) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String type, String? description, String? name,
            String? in_, String? scheme, String? bearerFormat)?
        $default, {
    TResult Function(String ref)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String type, String? description, String? name,
            String? in_, String? scheme, String? bearerFormat)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SecuritySchemeObject value) $default, {
    required TResult Function(SecuritySchemeObjectRef value) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SecuritySchemeObject value)? $default, {
    TResult Function(SecuritySchemeObjectRef value)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SecuritySchemeObject value)? $default, {
    TResult Function(SecuritySchemeObjectRef value)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecuritySchemeCopyWith<$Res> {
  factory $SecuritySchemeCopyWith(
          SecurityScheme value, $Res Function(SecurityScheme) then) =
      _$SecuritySchemeCopyWithImpl<$Res>;
}

/// @nodoc
class _$SecuritySchemeCopyWithImpl<$Res>
    implements $SecuritySchemeCopyWith<$Res> {
  _$SecuritySchemeCopyWithImpl(this._value, this._then);

  final SecurityScheme _value;
  // ignore: unused_field
  final $Res Function(SecurityScheme) _then;
}

/// @nodoc
abstract class $SecuritySchemeObjectCopyWith<$Res> {
  factory $SecuritySchemeObjectCopyWith(SecuritySchemeObject value,
          $Res Function(SecuritySchemeObject) then) =
      _$SecuritySchemeObjectCopyWithImpl<$Res>;
  $Res call(
      {String type,
      String? description,
      String? name,
      String? in_,
      String? scheme,
      String? bearerFormat});
}

/// @nodoc
class _$SecuritySchemeObjectCopyWithImpl<$Res>
    extends _$SecuritySchemeCopyWithImpl<$Res>
    implements $SecuritySchemeObjectCopyWith<$Res> {
  _$SecuritySchemeObjectCopyWithImpl(
      SecuritySchemeObject _value, $Res Function(SecuritySchemeObject) _then)
      : super(_value, (v) => _then(v as SecuritySchemeObject));

  @override
  SecuritySchemeObject get _value => super._value as SecuritySchemeObject;

  @override
  $Res call({
    Object? type = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? in_ = freezed,
    Object? scheme = freezed,
    Object? bearerFormat = freezed,
  }) {
    return _then(SecuritySchemeObject(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      in_: in_ == freezed
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as String?,
      scheme: scheme == freezed
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String?,
      bearerFormat: bearerFormat == freezed
          ? _value.bearerFormat
          : bearerFormat // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SecuritySchemeObject implements SecuritySchemeObject {
  const _$SecuritySchemeObject(
      {required this.type,
      this.description,
      this.name,
      this.in_,
      this.scheme,
      this.bearerFormat});

  @override // The type of the security scheme.
// Valid values are "apiKey", "http", "oauth2", "openIdConnect".
  final String type;
  @override // A short description for security scheme.
  final String? description;
  @override // The name of the header, query or cookie parameter to be used.
  final String? name;
  @override // The location of the API key.
// Valid values are "query", "header" or "cookie".
  final String? in_;
  @override // The name of the HTTP Authorization scheme to be used in the Authorization
// header as defined in RFC7235.
  final String? scheme;
  @override // A hint to the client to identify how the bearer token is formatted.
  final String? bearerFormat;

  @override
  String toString() {
    return 'SecurityScheme(type: $type, description: $description, name: $name, in_: $in_, scheme: $scheme, bearerFormat: $bearerFormat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecuritySchemeObject &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.in_, in_) &&
            const DeepCollectionEquality().equals(other.scheme, scheme) &&
            const DeepCollectionEquality()
                .equals(other.bearerFormat, bearerFormat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(in_),
      const DeepCollectionEquality().hash(scheme),
      const DeepCollectionEquality().hash(bearerFormat));

  @JsonKey(ignore: true)
  @override
  $SecuritySchemeObjectCopyWith<SecuritySchemeObject> get copyWith =>
      _$SecuritySchemeObjectCopyWithImpl<SecuritySchemeObject>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String type, String? description, String? name,
            String? in_, String? scheme, String? bearerFormat)
        $default, {
    required TResult Function(String ref) ref,
  }) {
    return $default(type, description, name, in_, scheme, bearerFormat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String type, String? description, String? name,
            String? in_, String? scheme, String? bearerFormat)?
        $default, {
    TResult Function(String ref)? ref,
  }) {
    return $default?.call(type, description, name, in_, scheme, bearerFormat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String type, String? description, String? name,
            String? in_, String? scheme, String? bearerFormat)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(type, description, name, in_, scheme, bearerFormat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SecuritySchemeObject value) $default, {
    required TResult Function(SecuritySchemeObjectRef value) ref,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SecuritySchemeObject value)? $default, {
    TResult Function(SecuritySchemeObjectRef value)? ref,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SecuritySchemeObject value)? $default, {
    TResult Function(SecuritySchemeObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SecuritySchemeObject implements SecurityScheme {
  const factory SecuritySchemeObject(
      {required String type,
      String? description,
      String? name,
      String? in_,
      String? scheme,
      String? bearerFormat}) = _$SecuritySchemeObject;

// The type of the security scheme.
// Valid values are "apiKey", "http", "oauth2", "openIdConnect".
  String get type; // A short description for security scheme.
  String?
      get description; // The name of the header, query or cookie parameter to be used.
  String? get name; // The location of the API key.
// Valid values are "query", "header" or "cookie".
  String?
      get in_; // The name of the HTTP Authorization scheme to be used in the Authorization
// header as defined in RFC7235.
  String?
      get scheme; // A hint to the client to identify how the bearer token is formatted.
  String? get bearerFormat;
  @JsonKey(ignore: true)
  $SecuritySchemeObjectCopyWith<SecuritySchemeObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecuritySchemeObjectRefCopyWith<$Res> {
  factory $SecuritySchemeObjectRefCopyWith(SecuritySchemeObjectRef value,
          $Res Function(SecuritySchemeObjectRef) then) =
      _$SecuritySchemeObjectRefCopyWithImpl<$Res>;
  $Res call({String ref});
}

/// @nodoc
class _$SecuritySchemeObjectRefCopyWithImpl<$Res>
    extends _$SecuritySchemeCopyWithImpl<$Res>
    implements $SecuritySchemeObjectRefCopyWith<$Res> {
  _$SecuritySchemeObjectRefCopyWithImpl(SecuritySchemeObjectRef _value,
      $Res Function(SecuritySchemeObjectRef) _then)
      : super(_value, (v) => _then(v as SecuritySchemeObjectRef));

  @override
  SecuritySchemeObjectRef get _value => super._value as SecuritySchemeObjectRef;

  @override
  $Res call({
    Object? ref = freezed,
  }) {
    return _then(SecuritySchemeObjectRef(
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SecuritySchemeObjectRef implements SecuritySchemeObjectRef {
  const _$SecuritySchemeObjectRef({required this.ref});

  @override
  final String ref;

  @override
  String toString() {
    return 'SecurityScheme.ref(ref: $ref)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecuritySchemeObjectRef &&
            const DeepCollectionEquality().equals(other.ref, ref));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ref));

  @JsonKey(ignore: true)
  @override
  $SecuritySchemeObjectRefCopyWith<SecuritySchemeObjectRef> get copyWith =>
      _$SecuritySchemeObjectRefCopyWithImpl<SecuritySchemeObjectRef>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String type, String? description, String? name,
            String? in_, String? scheme, String? bearerFormat)
        $default, {
    required TResult Function(String ref) ref,
  }) {
    return ref(this.ref);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String type, String? description, String? name,
            String? in_, String? scheme, String? bearerFormat)?
        $default, {
    TResult Function(String ref)? ref,
  }) {
    return ref?.call(this.ref);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String type, String? description, String? name,
            String? in_, String? scheme, String? bearerFormat)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this.ref);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SecuritySchemeObject value) $default, {
    required TResult Function(SecuritySchemeObjectRef value) ref,
  }) {
    return ref(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SecuritySchemeObject value)? $default, {
    TResult Function(SecuritySchemeObjectRef value)? ref,
  }) {
    return ref?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SecuritySchemeObject value)? $default, {
    TResult Function(SecuritySchemeObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this);
    }
    return orElse();
  }
}

abstract class SecuritySchemeObjectRef implements SecurityScheme {
  const factory SecuritySchemeObjectRef({required String ref}) =
      _$SecuritySchemeObjectRef;

  String get ref;
  @JsonKey(ignore: true)
  $SecuritySchemeObjectRefCopyWith<SecuritySchemeObjectRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LinkTearOff {
  const _$LinkTearOff();

  LinkObject call(
      {String? operationRef,
      String? operationId,
      Map<String, dynamic>? parameters,
      String? description}) {
    return LinkObject(
      operationRef: operationRef,
      operationId: operationId,
      parameters: parameters,
      description: description,
    );
  }

  LinkObjectRef ref({required String ref}) {
    return LinkObjectRef(
      ref: ref,
    );
  }
}

/// @nodoc
const $Link = _$LinkTearOff();

/// @nodoc
mixin _$Link {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? operationRef, String? operationId,
            Map<String, dynamic>? parameters, String? description)
        $default, {
    required TResult Function(String ref) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? operationRef, String? operationId,
            Map<String, dynamic>? parameters, String? description)?
        $default, {
    TResult Function(String ref)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? operationRef, String? operationId,
            Map<String, dynamic>? parameters, String? description)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LinkObject value) $default, {
    required TResult Function(LinkObjectRef value) ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(LinkObject value)? $default, {
    TResult Function(LinkObjectRef value)? ref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LinkObject value)? $default, {
    TResult Function(LinkObjectRef value)? ref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res>;
}

/// @nodoc
class _$LinkCopyWithImpl<$Res> implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  final Link _value;
  // ignore: unused_field
  final $Res Function(Link) _then;
}

/// @nodoc
abstract class $LinkObjectCopyWith<$Res> {
  factory $LinkObjectCopyWith(
          LinkObject value, $Res Function(LinkObject) then) =
      _$LinkObjectCopyWithImpl<$Res>;
  $Res call(
      {String? operationRef,
      String? operationId,
      Map<String, dynamic>? parameters,
      String? description});
}

/// @nodoc
class _$LinkObjectCopyWithImpl<$Res> extends _$LinkCopyWithImpl<$Res>
    implements $LinkObjectCopyWith<$Res> {
  _$LinkObjectCopyWithImpl(LinkObject _value, $Res Function(LinkObject) _then)
      : super(_value, (v) => _then(v as LinkObject));

  @override
  LinkObject get _value => super._value as LinkObject;

  @override
  $Res call({
    Object? operationRef = freezed,
    Object? operationId = freezed,
    Object? parameters = freezed,
    Object? description = freezed,
  }) {
    return _then(LinkObject(
      operationRef: operationRef == freezed
          ? _value.operationRef
          : operationRef // ignore: cast_nullable_to_non_nullable
              as String?,
      operationId: operationId == freezed
          ? _value.operationId
          : operationId // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LinkObject implements LinkObject {
  const _$LinkObject(
      {this.operationRef, this.operationId, this.parameters, this.description});

  @override // A relative or absolute reference to an API.
  final String? operationRef;
  @override // The name of an existing operation, as defined with a unique operationId.
  final String? operationId;
  @override // A map representing parameters to pass to an operation.
  final Map<String, dynamic>? parameters;
  @override // A description of the link.
  final String? description;

  @override
  String toString() {
    return 'Link(operationRef: $operationRef, operationId: $operationId, parameters: $parameters, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LinkObject &&
            const DeepCollectionEquality()
                .equals(other.operationRef, operationRef) &&
            const DeepCollectionEquality()
                .equals(other.operationId, operationId) &&
            const DeepCollectionEquality()
                .equals(other.parameters, parameters) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(operationRef),
      const DeepCollectionEquality().hash(operationId),
      const DeepCollectionEquality().hash(parameters),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  $LinkObjectCopyWith<LinkObject> get copyWith =>
      _$LinkObjectCopyWithImpl<LinkObject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? operationRef, String? operationId,
            Map<String, dynamic>? parameters, String? description)
        $default, {
    required TResult Function(String ref) ref,
  }) {
    return $default(operationRef, operationId, parameters, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? operationRef, String? operationId,
            Map<String, dynamic>? parameters, String? description)?
        $default, {
    TResult Function(String ref)? ref,
  }) {
    return $default?.call(operationRef, operationId, parameters, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? operationRef, String? operationId,
            Map<String, dynamic>? parameters, String? description)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(operationRef, operationId, parameters, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LinkObject value) $default, {
    required TResult Function(LinkObjectRef value) ref,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(LinkObject value)? $default, {
    TResult Function(LinkObjectRef value)? ref,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LinkObject value)? $default, {
    TResult Function(LinkObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LinkObject implements Link {
  const factory LinkObject(
      {String? operationRef,
      String? operationId,
      Map<String, dynamic>? parameters,
      String? description}) = _$LinkObject;

// A relative or absolute reference to an API.
  String?
      get operationRef; // The name of an existing operation, as defined with a unique operationId.
  String?
      get operationId; // A map representing parameters to pass to an operation.
  Map<String, dynamic>? get parameters; // A description of the link.
  String? get description;
  @JsonKey(ignore: true)
  $LinkObjectCopyWith<LinkObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkObjectRefCopyWith<$Res> {
  factory $LinkObjectRefCopyWith(
          LinkObjectRef value, $Res Function(LinkObjectRef) then) =
      _$LinkObjectRefCopyWithImpl<$Res>;
  $Res call({String ref});
}

/// @nodoc
class _$LinkObjectRefCopyWithImpl<$Res> extends _$LinkCopyWithImpl<$Res>
    implements $LinkObjectRefCopyWith<$Res> {
  _$LinkObjectRefCopyWithImpl(
      LinkObjectRef _value, $Res Function(LinkObjectRef) _then)
      : super(_value, (v) => _then(v as LinkObjectRef));

  @override
  LinkObjectRef get _value => super._value as LinkObjectRef;

  @override
  $Res call({
    Object? ref = freezed,
  }) {
    return _then(LinkObjectRef(
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LinkObjectRef implements LinkObjectRef {
  const _$LinkObjectRef({required this.ref});

  @override
  final String ref;

  @override
  String toString() {
    return 'Link.ref(ref: $ref)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LinkObjectRef &&
            const DeepCollectionEquality().equals(other.ref, ref));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ref));

  @JsonKey(ignore: true)
  @override
  $LinkObjectRefCopyWith<LinkObjectRef> get copyWith =>
      _$LinkObjectRefCopyWithImpl<LinkObjectRef>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? operationRef, String? operationId,
            Map<String, dynamic>? parameters, String? description)
        $default, {
    required TResult Function(String ref) ref,
  }) {
    return ref(this.ref);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? operationRef, String? operationId,
            Map<String, dynamic>? parameters, String? description)?
        $default, {
    TResult Function(String ref)? ref,
  }) {
    return ref?.call(this.ref);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? operationRef, String? operationId,
            Map<String, dynamic>? parameters, String? description)?
        $default, {
    TResult Function(String ref)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this.ref);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LinkObject value) $default, {
    required TResult Function(LinkObjectRef value) ref,
  }) {
    return ref(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(LinkObject value)? $default, {
    TResult Function(LinkObjectRef value)? ref,
  }) {
    return ref?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LinkObject value)? $default, {
    TResult Function(LinkObjectRef value)? ref,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this);
    }
    return orElse();
  }
}

abstract class LinkObjectRef implements Link {
  const factory LinkObjectRef({required String ref}) = _$LinkObjectRef;

  String get ref;
  @JsonKey(ignore: true)
  $LinkObjectRefCopyWith<LinkObjectRef> get copyWith =>
      throw _privateConstructorUsedError;
}
