// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JokeModel _$JokeModelFromJson(Map<String, dynamic> json) {
  return _JokeModel.fromJson(json);
}

/// @nodoc
class _$JokeModelTearOff {
  const _$JokeModelTearOff();

  _JokeModel call(
      {required int id,
      required String type,
      required String setup,
      required String punchline}) {
    return _JokeModel(
      id: id,
      type: type,
      setup: setup,
      punchline: punchline,
    );
  }

  JokeModel fromJson(Map<String, Object?> json) {
    return JokeModel.fromJson(json);
  }
}

/// @nodoc
const $JokeModel = _$JokeModelTearOff();

/// @nodoc
mixin _$JokeModel {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get setup => throw _privateConstructorUsedError;
  String get punchline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JokeModelCopyWith<JokeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeModelCopyWith<$Res> {
  factory $JokeModelCopyWith(JokeModel value, $Res Function(JokeModel) then) =
      _$JokeModelCopyWithImpl<$Res>;
  $Res call({int id, String type, String setup, String punchline});
}

/// @nodoc
class _$JokeModelCopyWithImpl<$Res> implements $JokeModelCopyWith<$Res> {
  _$JokeModelCopyWithImpl(this._value, this._then);

  final JokeModel _value;
  // ignore: unused_field
  final $Res Function(JokeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? setup = freezed,
    Object? punchline = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      setup: setup == freezed
          ? _value.setup
          : setup // ignore: cast_nullable_to_non_nullable
              as String,
      punchline: punchline == freezed
          ? _value.punchline
          : punchline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$JokeModelCopyWith<$Res> implements $JokeModelCopyWith<$Res> {
  factory _$JokeModelCopyWith(
          _JokeModel value, $Res Function(_JokeModel) then) =
      __$JokeModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String type, String setup, String punchline});
}

/// @nodoc
class __$JokeModelCopyWithImpl<$Res> extends _$JokeModelCopyWithImpl<$Res>
    implements _$JokeModelCopyWith<$Res> {
  __$JokeModelCopyWithImpl(_JokeModel _value, $Res Function(_JokeModel) _then)
      : super(_value, (v) => _then(v as _JokeModel));

  @override
  _JokeModel get _value => super._value as _JokeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? setup = freezed,
    Object? punchline = freezed,
  }) {
    return _then(_JokeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      setup: setup == freezed
          ? _value.setup
          : setup // ignore: cast_nullable_to_non_nullable
              as String,
      punchline: punchline == freezed
          ? _value.punchline
          : punchline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JokeModel with DiagnosticableTreeMixin implements _JokeModel {
  const _$_JokeModel(
      {required this.id,
      required this.type,
      required this.setup,
      required this.punchline});

  factory _$_JokeModel.fromJson(Map<String, dynamic> json) =>
      _$$_JokeModelFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final String setup;
  @override
  final String punchline;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JokeModel(id: $id, type: $type, setup: $setup, punchline: $punchline)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JokeModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('setup', setup))
      ..add(DiagnosticsProperty('punchline', punchline));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JokeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.setup, setup) &&
            const DeepCollectionEquality().equals(other.punchline, punchline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(setup),
      const DeepCollectionEquality().hash(punchline));

  @JsonKey(ignore: true)
  @override
  _$JokeModelCopyWith<_JokeModel> get copyWith =>
      __$JokeModelCopyWithImpl<_JokeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JokeModelToJson(this);
  }
}

abstract class _JokeModel implements JokeModel {
  const factory _JokeModel(
      {required int id,
      required String type,
      required String setup,
      required String punchline}) = _$_JokeModel;

  factory _JokeModel.fromJson(Map<String, dynamic> json) =
      _$_JokeModel.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  String get setup;
  @override
  String get punchline;
  @override
  @JsonKey(ignore: true)
  _$JokeModelCopyWith<_JokeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
