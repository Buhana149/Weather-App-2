// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_forecastday.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MainForecastday _$MainForecastdayFromJson(Map<String, dynamic> json) {
  return _MainForecastday.fromJson(json);
}

/// @nodoc
mixin _$MainForecastday {
  ForecastList get forecast => throw _privateConstructorUsedError;

  /// Serializes this MainForecastday to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainForecastday
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainForecastdayCopyWith<MainForecastday> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainForecastdayCopyWith<$Res> {
  factory $MainForecastdayCopyWith(
          MainForecastday value, $Res Function(MainForecastday) then) =
      _$MainForecastdayCopyWithImpl<$Res, MainForecastday>;
  @useResult
  $Res call({ForecastList forecast});

  $ForecastListCopyWith<$Res> get forecast;
}

/// @nodoc
class _$MainForecastdayCopyWithImpl<$Res, $Val extends MainForecastday>
    implements $MainForecastdayCopyWith<$Res> {
  _$MainForecastdayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainForecastday
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = null,
  }) {
    return _then(_value.copyWith(
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastList,
    ) as $Val);
  }

  /// Create a copy of MainForecastday
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
abstract class _$$MainForecastdayImplCopyWith<$Res>
    implements $MainForecastdayCopyWith<$Res> {
  factory _$$MainForecastdayImplCopyWith(_$MainForecastdayImpl value,
          $Res Function(_$MainForecastdayImpl) then) =
      __$$MainForecastdayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForecastList forecast});

  @override
  $ForecastListCopyWith<$Res> get forecast;
}

/// @nodoc
class __$$MainForecastdayImplCopyWithImpl<$Res>
    extends _$MainForecastdayCopyWithImpl<$Res, _$MainForecastdayImpl>
    implements _$$MainForecastdayImplCopyWith<$Res> {
  __$$MainForecastdayImplCopyWithImpl(
      _$MainForecastdayImpl _value, $Res Function(_$MainForecastdayImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainForecastday
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = null,
  }) {
    return _then(_$MainForecastdayImpl(
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainForecastdayImpl implements _MainForecastday {
  const _$MainForecastdayImpl({required this.forecast});

  factory _$MainForecastdayImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainForecastdayImplFromJson(json);

  @override
  final ForecastList forecast;

  @override
  String toString() {
    return 'MainForecastday(forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainForecastdayImpl &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, forecast);

  /// Create a copy of MainForecastday
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainForecastdayImplCopyWith<_$MainForecastdayImpl> get copyWith =>
      __$$MainForecastdayImplCopyWithImpl<_$MainForecastdayImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainForecastdayImplToJson(
      this,
    );
  }
}

abstract class _MainForecastday implements MainForecastday {
  const factory _MainForecastday({required final ForecastList forecast}) =
      _$MainForecastdayImpl;

  factory _MainForecastday.fromJson(Map<String, dynamic> json) =
      _$MainForecastdayImpl.fromJson;

  @override
  ForecastList get forecast;

  /// Create a copy of MainForecastday
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainForecastdayImplCopyWith<_$MainForecastdayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
