// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return _Forecast.fromJson(json);
}

/// @nodoc
mixin _$Forecast {
  String get date => throw _privateConstructorUsedError;
  ForecastDay get day => throw _privateConstructorUsedError;
  ForecastAstro get astro => throw _privateConstructorUsedError;

  /// Serializes this Forecast to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastCopyWith<Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) then) =
      _$ForecastCopyWithImpl<$Res, Forecast>;
  @useResult
  $Res call({String date, ForecastDay day, ForecastAstro astro});

  $ForecastDayCopyWith<$Res> get day;
  $ForecastAstroCopyWith<$Res> get astro;
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res, $Val extends Forecast>
    implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? day = null,
    Object? astro = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as ForecastDay,
      astro: null == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as ForecastAstro,
    ) as $Val);
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastDayCopyWith<$Res> get day {
    return $ForecastDayCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastAstroCopyWith<$Res> get astro {
    return $ForecastAstroCopyWith<$Res>(_value.astro, (value) {
      return _then(_value.copyWith(astro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastImplCopyWith<$Res>
    implements $ForecastCopyWith<$Res> {
  factory _$$ForecastImplCopyWith(
          _$ForecastImpl value, $Res Function(_$ForecastImpl) then) =
      __$$ForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, ForecastDay day, ForecastAstro astro});

  @override
  $ForecastDayCopyWith<$Res> get day;
  @override
  $ForecastAstroCopyWith<$Res> get astro;
}

/// @nodoc
class __$$ForecastImplCopyWithImpl<$Res>
    extends _$ForecastCopyWithImpl<$Res, _$ForecastImpl>
    implements _$$ForecastImplCopyWith<$Res> {
  __$$ForecastImplCopyWithImpl(
      _$ForecastImpl _value, $Res Function(_$ForecastImpl) _then)
      : super(_value, _then);

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? day = null,
    Object? astro = null,
  }) {
    return _then(_$ForecastImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as ForecastDay,
      astro: null == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as ForecastAstro,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastImpl implements _Forecast {
  _$ForecastImpl({required this.date, required this.day, required this.astro});

  factory _$ForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastImplFromJson(json);

  @override
  final String date;
  @override
  final ForecastDay day;
  @override
  final ForecastAstro astro;

  @override
  String toString() {
    return 'Forecast(date: $date, day: $day, astro: $astro)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.astro, astro) || other.astro == astro));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, day, astro);

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastImplCopyWith<_$ForecastImpl> get copyWith =>
      __$$ForecastImplCopyWithImpl<_$ForecastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastImplToJson(
      this,
    );
  }
}

abstract class _Forecast implements Forecast {
  factory _Forecast(
      {required final String date,
      required final ForecastDay day,
      required final ForecastAstro astro}) = _$ForecastImpl;

  factory _Forecast.fromJson(Map<String, dynamic> json) =
      _$ForecastImpl.fromJson;

  @override
  String get date;
  @override
  ForecastDay get day;
  @override
  ForecastAstro get astro;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastImplCopyWith<_$ForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
