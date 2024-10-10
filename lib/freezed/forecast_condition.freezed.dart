// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastCondition _$ForecastConditionFromJson(Map<String, dynamic> json) {
  return _ForecastCondition.fromJson(json);
}

/// @nodoc
mixin _$ForecastCondition {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this ForecastCondition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastConditionCopyWith<ForecastCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastConditionCopyWith<$Res> {
  factory $ForecastConditionCopyWith(
          ForecastCondition value, $Res Function(ForecastCondition) then) =
      _$ForecastConditionCopyWithImpl<$Res, ForecastCondition>;
  @useResult
  $Res call({String text, String icon});
}

/// @nodoc
class _$ForecastConditionCopyWithImpl<$Res, $Val extends ForecastCondition>
    implements $ForecastConditionCopyWith<$Res> {
  _$ForecastConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastConditionImplCopyWith<$Res>
    implements $ForecastConditionCopyWith<$Res> {
  factory _$$ForecastConditionImplCopyWith(_$ForecastConditionImpl value,
          $Res Function(_$ForecastConditionImpl) then) =
      __$$ForecastConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String icon});
}

/// @nodoc
class __$$ForecastConditionImplCopyWithImpl<$Res>
    extends _$ForecastConditionCopyWithImpl<$Res, _$ForecastConditionImpl>
    implements _$$ForecastConditionImplCopyWith<$Res> {
  __$$ForecastConditionImplCopyWithImpl(_$ForecastConditionImpl _value,
      $Res Function(_$ForecastConditionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
  }) {
    return _then(_$ForecastConditionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
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
class _$ForecastConditionImpl implements _ForecastCondition {
  _$ForecastConditionImpl({required this.text, required this.icon});

  factory _$ForecastConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastConditionImplFromJson(json);

  @override
  final String text;
  @override
  final String icon;

  @override
  String toString() {
    return 'ForecastCondition(text: $text, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastConditionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon);

  /// Create a copy of ForecastCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastConditionImplCopyWith<_$ForecastConditionImpl> get copyWith =>
      __$$ForecastConditionImplCopyWithImpl<_$ForecastConditionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastConditionImplToJson(
      this,
    );
  }
}

abstract class _ForecastCondition implements ForecastCondition {
  factory _ForecastCondition(
      {required final String text,
      required final String icon}) = _$ForecastConditionImpl;

  factory _ForecastCondition.fromJson(Map<String, dynamic> json) =
      _$ForecastConditionImpl.fromJson;

  @override
  String get text;
  @override
  String get icon;

  /// Create a copy of ForecastCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastConditionImplCopyWith<_$ForecastConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
