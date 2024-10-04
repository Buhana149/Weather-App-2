// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastDay _$ForecastDayFromJson(Map<String, dynamic> json) {
  return _ForecastDay.fromJson(json);
}

/// @nodoc
mixin _$ForecastDay {
  String get maxtemp_c => throw _privateConstructorUsedError;
  String get mintemp_c => throw _privateConstructorUsedError;
  ForecastCondition get condition => throw _privateConstructorUsedError;
  String get avgtemp_c => throw _privateConstructorUsedError;

  /// Serializes this ForecastDay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastDayCopyWith<ForecastDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayCopyWith<$Res> {
  factory $ForecastDayCopyWith(
          ForecastDay value, $Res Function(ForecastDay) then) =
      _$ForecastDayCopyWithImpl<$Res, ForecastDay>;
  @useResult
  $Res call(
      {String maxtemp_c,
      String mintemp_c,
      ForecastCondition condition,
      String avgtemp_c});

  $ForecastConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$ForecastDayCopyWithImpl<$Res, $Val extends ForecastDay>
    implements $ForecastDayCopyWith<$Res> {
  _$ForecastDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtemp_c = null,
    Object? mintemp_c = null,
    Object? condition = null,
    Object? avgtemp_c = null,
  }) {
    return _then(_value.copyWith(
      maxtemp_c: null == maxtemp_c
          ? _value.maxtemp_c
          : maxtemp_c // ignore: cast_nullable_to_non_nullable
              as String,
      mintemp_c: null == mintemp_c
          ? _value.mintemp_c
          : mintemp_c // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ForecastCondition,
      avgtemp_c: null == avgtemp_c
          ? _value.avgtemp_c
          : avgtemp_c // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ForecastDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastConditionCopyWith<$Res> get condition {
    return $ForecastConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastDayImplCopyWith<$Res>
    implements $ForecastDayCopyWith<$Res> {
  factory _$$ForecastDayImplCopyWith(
          _$ForecastDayImpl value, $Res Function(_$ForecastDayImpl) then) =
      __$$ForecastDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String maxtemp_c,
      String mintemp_c,
      ForecastCondition condition,
      String avgtemp_c});

  @override
  $ForecastConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$ForecastDayImplCopyWithImpl<$Res>
    extends _$ForecastDayCopyWithImpl<$Res, _$ForecastDayImpl>
    implements _$$ForecastDayImplCopyWith<$Res> {
  __$$ForecastDayImplCopyWithImpl(
      _$ForecastDayImpl _value, $Res Function(_$ForecastDayImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtemp_c = null,
    Object? mintemp_c = null,
    Object? condition = null,
    Object? avgtemp_c = null,
  }) {
    return _then(_$ForecastDayImpl(
      maxtemp_c: null == maxtemp_c
          ? _value.maxtemp_c
          : maxtemp_c // ignore: cast_nullable_to_non_nullable
              as String,
      mintemp_c: null == mintemp_c
          ? _value.mintemp_c
          : mintemp_c // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ForecastCondition,
      avgtemp_c: null == avgtemp_c
          ? _value.avgtemp_c
          : avgtemp_c // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastDayImpl implements _ForecastDay {
  const _$ForecastDayImpl(
      {required this.maxtemp_c,
      required this.mintemp_c,
      required this.condition,
      required this.avgtemp_c});

  factory _$ForecastDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDayImplFromJson(json);

  @override
  final String maxtemp_c;
  @override
  final String mintemp_c;
  @override
  final ForecastCondition condition;
  @override
  final String avgtemp_c;

  @override
  String toString() {
    return 'ForecastDay(maxtemp_c: $maxtemp_c, mintemp_c: $mintemp_c, condition: $condition, avgtemp_c: $avgtemp_c)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDayImpl &&
            (identical(other.maxtemp_c, maxtemp_c) ||
                other.maxtemp_c == maxtemp_c) &&
            (identical(other.mintemp_c, mintemp_c) ||
                other.mintemp_c == mintemp_c) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.avgtemp_c, avgtemp_c) ||
                other.avgtemp_c == avgtemp_c));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, maxtemp_c, mintemp_c, condition, avgtemp_c);

  /// Create a copy of ForecastDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastDayImplCopyWith<_$ForecastDayImpl> get copyWith =>
      __$$ForecastDayImplCopyWithImpl<_$ForecastDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDayImplToJson(
      this,
    );
  }
}

abstract class _ForecastDay implements ForecastDay {
  const factory _ForecastDay(
      {required final String maxtemp_c,
      required final String mintemp_c,
      required final ForecastCondition condition,
      required final String avgtemp_c}) = _$ForecastDayImpl;

  factory _ForecastDay.fromJson(Map<String, dynamic> json) =
      _$ForecastDayImpl.fromJson;

  @override
  String get maxtemp_c;
  @override
  String get mintemp_c;
  @override
  ForecastCondition get condition;
  @override
  String get avgtemp_c;

  /// Create a copy of ForecastDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastDayImplCopyWith<_$ForecastDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
