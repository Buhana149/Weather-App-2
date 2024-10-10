// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MainForecast _$MainForecastFromJson(Map<String, dynamic> json) {
  return _MainForecast.fromJson(json);
}

/// @nodoc
mixin _$MainForecast {
  ForecastList get forecastday => throw _privateConstructorUsedError;

  /// Serializes this MainForecast to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainForecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainForecastCopyWith<MainForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainForecastCopyWith<$Res> {
  factory $MainForecastCopyWith(
          MainForecast value, $Res Function(MainForecast) then) =
      _$MainForecastCopyWithImpl<$Res, MainForecast>;
  @useResult
  $Res call({ForecastList forecastday});

  $ForecastListCopyWith<$Res> get forecastday;
}

/// @nodoc
class _$MainForecastCopyWithImpl<$Res, $Val extends MainForecast>
    implements $MainForecastCopyWith<$Res> {
  _$MainForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainForecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastday = null,
  }) {
    return _then(_value.copyWith(
      forecastday: null == forecastday
          ? _value.forecastday
          : forecastday // ignore: cast_nullable_to_non_nullable
              as ForecastList,
    ) as $Val);
  }

  /// Create a copy of MainForecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastListCopyWith<$Res> get forecastday {
    return $ForecastListCopyWith<$Res>(_value.forecastday, (value) {
      return _then(_value.copyWith(forecastday: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainForecastImplCopyWith<$Res>
    implements $MainForecastCopyWith<$Res> {
  factory _$$MainForecastImplCopyWith(
          _$MainForecastImpl value, $Res Function(_$MainForecastImpl) then) =
      __$$MainForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForecastList forecastday});

  @override
  $ForecastListCopyWith<$Res> get forecastday;
}

/// @nodoc
class __$$MainForecastImplCopyWithImpl<$Res>
    extends _$MainForecastCopyWithImpl<$Res, _$MainForecastImpl>
    implements _$$MainForecastImplCopyWith<$Res> {
  __$$MainForecastImplCopyWithImpl(
      _$MainForecastImpl _value, $Res Function(_$MainForecastImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainForecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastday = null,
  }) {
    return _then(_$MainForecastImpl(
      forecastday: null == forecastday
          ? _value.forecastday
          : forecastday // ignore: cast_nullable_to_non_nullable
              as ForecastList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainForecastImpl implements _MainForecast {
  _$MainForecastImpl({required this.forecastday});

  factory _$MainForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainForecastImplFromJson(json);

  @override
  final ForecastList forecastday;

  @override
  String toString() {
    return 'MainForecast(forecastday: $forecastday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainForecastImpl &&
            (identical(other.forecastday, forecastday) ||
                other.forecastday == forecastday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, forecastday);

  /// Create a copy of MainForecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainForecastImplCopyWith<_$MainForecastImpl> get copyWith =>
      __$$MainForecastImplCopyWithImpl<_$MainForecastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainForecastImplToJson(
      this,
    );
  }
}

abstract class _MainForecast implements MainForecast {
  factory _MainForecast({required final ForecastList forecastday}) =
      _$MainForecastImpl;

  factory _MainForecast.fromJson(Map<String, dynamic> json) =
      _$MainForecastImpl.fromJson;

  @override
  ForecastList get forecastday;

  /// Create a copy of MainForecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainForecastImplCopyWith<_$MainForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
