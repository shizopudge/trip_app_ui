// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'landscape.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Landscape _$LandscapeFromJson(Map<String, dynamic> json) {
  return _Landscape.fromJson(json);
}

/// @nodoc
mixin _$Landscape {
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LandscapeCopyWith<Landscape> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandscapeCopyWith<$Res> {
  factory $LandscapeCopyWith(Landscape value, $Res Function(Landscape) then) =
      _$LandscapeCopyWithImpl<$Res, Landscape>;
  @useResult
  $Res call({String name, String icon});
}

/// @nodoc
class _$LandscapeCopyWithImpl<$Res, $Val extends Landscape>
    implements $LandscapeCopyWith<$Res> {
  _$LandscapeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LandscapeCopyWith<$Res> implements $LandscapeCopyWith<$Res> {
  factory _$$_LandscapeCopyWith(
          _$_Landscape value, $Res Function(_$_Landscape) then) =
      __$$_LandscapeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String icon});
}

/// @nodoc
class __$$_LandscapeCopyWithImpl<$Res>
    extends _$LandscapeCopyWithImpl<$Res, _$_Landscape>
    implements _$$_LandscapeCopyWith<$Res> {
  __$$_LandscapeCopyWithImpl(
      _$_Landscape _value, $Res Function(_$_Landscape) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_$_Landscape(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Landscape implements _Landscape {
  const _$_Landscape({required this.name, required this.icon});

  factory _$_Landscape.fromJson(Map<String, dynamic> json) =>
      _$$_LandscapeFromJson(json);

  @override
  final String name;
  @override
  final String icon;

  @override
  String toString() {
    return 'Landscape(name: $name, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Landscape &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LandscapeCopyWith<_$_Landscape> get copyWith =>
      __$$_LandscapeCopyWithImpl<_$_Landscape>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LandscapeToJson(
      this,
    );
  }
}

abstract class _Landscape implements Landscape {
  const factory _Landscape(
      {required final String name, required final String icon}) = _$_Landscape;

  factory _Landscape.fromJson(Map<String, dynamic> json) =
      _$_Landscape.fromJson;

  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_LandscapeCopyWith<_$_Landscape> get copyWith =>
      throw _privateConstructorUsedError;
}
