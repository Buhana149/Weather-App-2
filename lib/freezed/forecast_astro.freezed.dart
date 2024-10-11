// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_astro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastAstro _$ForecastAstroFromJson(Map<String, dynamic> json) {
  return _ForecastAstro.fromJson(json);
}

/// @nodoc
mixin _$ForecastAstro {
  String get sunrise => throw _privateConstructorUsedError;
  String get sunset => throw _privateConstructorUsedError;

  /// Serializes this ForecastAstro to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastAstro
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastAstroCopyWith<ForecastAstro> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastAstroCopyWith<$Res> {
  factory $ForecastAstroCopyWith(
          ForecastAstro value, $Res Function(ForecastAstro) then) =
      _$ForecastAstroCopyWithImpl<$Res, ForecastAstro>;
  @useResult
  $Res call({String sunrise, String sunset});
}

/// @nodoc
class _$ForecastAstroCopyWithImpl<$Res, $Val extends ForecastAstro>
    implements $ForecastAstroCopyWith<$Res> {
  _$ForecastAstroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastAstro
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_value.copyWith(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastAstroImplCopyWith<$Res>
    implements $ForecastAstroCopyWith<$Res> {
  factory _$$ForecastAstroImplCopyWith(
          _$ForecastAstroImpl value, $Res Function(_$ForecastAstroImpl) then) =
      __$$ForecastAstroImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sunrise, String sunset});
}

/// @nodoc
class __$$ForecastAstroImplCopyWithImpl<$Res>
    extends _$ForecastAstroCopyWithImpl<$Res, _$ForecastAstroImpl>
    implements _$$ForecastAstroImplCopyWith<$Res> {
  __$$ForecastAstroImplCopyWithImpl(
      _$ForecastAstroImpl _value, $Res Function(_$ForecastAstroImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastAstro
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$ForecastAstroImpl(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastAstroImpl implements _ForecastAstro {
  _$ForecastAstroImpl({required this.sunrise, required this.sunset});

  factory _$ForecastAstroImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastAstroImplFromJson(json);

  @override
  final String sunrise;
  @override
  final String sunset;

  @override
  String toString() {
    return 'ForecastAstro(sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastAstroImpl &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sunrise, sunset);

  /// Create a copy of ForecastAstro
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastAstroImplCopyWith<_$ForecastAstroImpl> get copyWith =>
      __$$ForecastAstroImplCopyWithImpl<_$ForecastAstroImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastAstroImplToJson(
      this,
    );
  }
}

abstract class _ForecastAstro implements ForecastAstro {
  factory _ForecastAstro(
      {required final String sunrise,
      required final String sunset}) = _$ForecastAstroImpl;

  factory _ForecastAstro.fromJson(Map<String, dynamic> json) =
      _$ForecastAstroImpl.fromJson;

  @override
  String get sunrise;
  @override
  String get sunset;

  /// Create a copy of ForecastAstro
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastAstroImplCopyWith<_$ForecastAstroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
