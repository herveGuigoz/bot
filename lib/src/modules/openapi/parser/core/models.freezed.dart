// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

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
