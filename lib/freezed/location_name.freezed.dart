// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationName _$LocationNameFromJson(Map<String, dynamic> json) {
  return _LocationName.fromJson(json);
}

/// @nodoc
mixin _$LocationName {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this LocationName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationNameCopyWith<LocationName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationNameCopyWith<$Res> {
  factory $LocationNameCopyWith(
          LocationName value, $Res Function(LocationName) then) =
      _$LocationNameCopyWithImpl<$Res, LocationName>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$LocationNameCopyWithImpl<$Res, $Val extends LocationName>
    implements $LocationNameCopyWith<$Res> {
  _$LocationNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationNameImplCopyWith<$Res>
    implements $LocationNameCopyWith<$Res> {
  factory _$$LocationNameImplCopyWith(
          _$LocationNameImpl value, $Res Function(_$LocationNameImpl) then) =
      __$$LocationNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$LocationNameImplCopyWithImpl<$Res>
    extends _$LocationNameCopyWithImpl<$Res, _$LocationNameImpl>
    implements _$$LocationNameImplCopyWith<$Res> {
  __$$LocationNameImplCopyWithImpl(
      _$LocationNameImpl _value, $Res Function(_$LocationNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$LocationNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationNameImpl implements _LocationName {
  _$LocationNameImpl({required this.name});

  factory _$LocationNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationNameImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'LocationName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of LocationName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationNameImplCopyWith<_$LocationNameImpl> get copyWith =>
      __$$LocationNameImplCopyWithImpl<_$LocationNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationNameImplToJson(
      this,
    );
  }
}

abstract class _LocationName implements LocationName {
  factory _LocationName({required final String name}) = _$LocationNameImpl;

  factory _LocationName.fromJson(Map<String, dynamic> json) =
      _$LocationNameImpl.fromJson;

  @override
  String get name;

  /// Create a copy of LocationName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationNameImplCopyWith<_$LocationNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
