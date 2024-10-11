// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_general.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherGeneral _$WeatherGeneralFromJson(Map<String, dynamic> json) {
  return _WeatherGeneral.fromJson(json);
}

/// @nodoc
mixin _$WeatherGeneral {
  LocationName get location => throw _privateConstructorUsedError;
  CurrentWeather get current => throw _privateConstructorUsedError;
  ForecastList get forecast => throw _privateConstructorUsedError;

  /// Serializes this WeatherGeneral to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherGeneral
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherGeneralCopyWith<WeatherGeneral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherGeneralCopyWith<$Res> {
  factory $WeatherGeneralCopyWith(
          WeatherGeneral value, $Res Function(WeatherGeneral) then) =
      _$WeatherGeneralCopyWithImpl<$Res, WeatherGeneral>;
  @useResult
  $Res call(
      {LocationName location, CurrentWeather current, ForecastList forecast});

  $LocationNameCopyWith<$Res> get location;
  $CurrentWeatherCopyWith<$Res> get current;
  $ForecastListCopyWith<$Res> get forecast;
}

/// @nodoc
class _$WeatherGeneralCopyWithImpl<$Res, $Val extends WeatherGeneral>
    implements $WeatherGeneralCopyWith<$Res> {
  _$WeatherGeneralCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherGeneral
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
    Object? forecast = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationName,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastList,
    ) as $Val);
  }

  /// Create a copy of WeatherGeneral
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationNameCopyWith<$Res> get location {
    return $LocationNameCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of WeatherGeneral
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get current {
    return $CurrentWeatherCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  /// Create a copy of WeatherGeneral
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastListCopyWith<$Res> get forecast {
    return $ForecastListCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherGeneralImplCopyWith<$Res>
    implements $WeatherGeneralCopyWith<$Res> {
  factory _$$WeatherGeneralImplCopyWith(_$WeatherGeneralImpl value,
          $Res Function(_$WeatherGeneralImpl) then) =
      __$$WeatherGeneralImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocationName location, CurrentWeather current, ForecastList forecast});

  @override
  $LocationNameCopyWith<$Res> get location;
  @override
  $CurrentWeatherCopyWith<$Res> get current;
  @override
  $ForecastListCopyWith<$Res> get forecast;
}

/// @nodoc
class __$$WeatherGeneralImplCopyWithImpl<$Res>
    extends _$WeatherGeneralCopyWithImpl<$Res, _$WeatherGeneralImpl>
    implements _$$WeatherGeneralImplCopyWith<$Res> {
  __$$WeatherGeneralImplCopyWithImpl(
      _$WeatherGeneralImpl _value, $Res Function(_$WeatherGeneralImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherGeneral
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
    Object? forecast = null,
  }) {
    return _then(_$WeatherGeneralImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationName,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherGeneralImpl implements _WeatherGeneral {
  _$WeatherGeneralImpl(
      {required this.location, required this.current, required this.forecast});

  factory _$WeatherGeneralImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherGeneralImplFromJson(json);

  @override
  final LocationName location;
  @override
  final CurrentWeather current;
  @override
  final ForecastList forecast;

  @override
  String toString() {
    return 'WeatherGeneral(location: $location, current: $current, forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherGeneralImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location, current, forecast);

  /// Create a copy of WeatherGeneral
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherGeneralImplCopyWith<_$WeatherGeneralImpl> get copyWith =>
      __$$WeatherGeneralImplCopyWithImpl<_$WeatherGeneralImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherGeneralImplToJson(
      this,
    );
  }
}

abstract class _WeatherGeneral implements WeatherGeneral {
  factory _WeatherGeneral(
      {required final LocationName location,
      required final CurrentWeather current,
      required final ForecastList forecast}) = _$WeatherGeneralImpl;

  factory _WeatherGeneral.fromJson(Map<String, dynamic> json) =
      _$WeatherGeneralImpl.fromJson;

  @override
  LocationName get location;
  @override
  CurrentWeather get current;
  @override
  ForecastList get forecast;

  /// Create a copy of WeatherGeneral
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherGeneralImplCopyWith<_$WeatherGeneralImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
