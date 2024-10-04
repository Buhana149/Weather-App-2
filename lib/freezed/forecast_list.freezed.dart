// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastList _$ForecastListFromJson(Map<String, dynamic> json) {
  return _ForecastList.fromJson(json);
}

/// @nodoc
mixin _$ForecastList {
  List<Forecast> get forecastList => throw _privateConstructorUsedError;

  /// Serializes this ForecastList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastListCopyWith<ForecastList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastListCopyWith<$Res> {
  factory $ForecastListCopyWith(
          ForecastList value, $Res Function(ForecastList) then) =
      _$ForecastListCopyWithImpl<$Res, ForecastList>;
  @useResult
  $Res call({List<Forecast> forecastList});
}

/// @nodoc
class _$ForecastListCopyWithImpl<$Res, $Val extends ForecastList>
    implements $ForecastListCopyWith<$Res> {
  _$ForecastListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastList = null,
  }) {
    return _then(_value.copyWith(
      forecastList: null == forecastList
          ? _value.forecastList
          : forecastList // ignore: cast_nullable_to_non_nullable
              as List<Forecast>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastListImplCopyWith<$Res>
    implements $ForecastListCopyWith<$Res> {
  factory _$$ForecastListImplCopyWith(
          _$ForecastListImpl value, $Res Function(_$ForecastListImpl) then) =
      __$$ForecastListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Forecast> forecastList});
}

/// @nodoc
class __$$ForecastListImplCopyWithImpl<$Res>
    extends _$ForecastListCopyWithImpl<$Res, _$ForecastListImpl>
    implements _$$ForecastListImplCopyWith<$Res> {
  __$$ForecastListImplCopyWithImpl(
      _$ForecastListImpl _value, $Res Function(_$ForecastListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastList = null,
  }) {
    return _then(_$ForecastListImpl(
      forecastList: null == forecastList
          ? _value._forecastList
          : forecastList // ignore: cast_nullable_to_non_nullable
              as List<Forecast>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastListImpl implements _ForecastList {
  const _$ForecastListImpl({required final List<Forecast> forecastList})
      : _forecastList = forecastList;

  factory _$ForecastListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastListImplFromJson(json);

  final List<Forecast> _forecastList;
  @override
  List<Forecast> get forecastList {
    if (_forecastList is EqualUnmodifiableListView) return _forecastList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecastList);
  }

  @override
  String toString() {
    return 'ForecastList(forecastList: $forecastList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastListImpl &&
            const DeepCollectionEquality()
                .equals(other._forecastList, _forecastList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_forecastList));

  /// Create a copy of ForecastList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastListImplCopyWith<_$ForecastListImpl> get copyWith =>
      __$$ForecastListImplCopyWithImpl<_$ForecastListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastListImplToJson(
      this,
    );
  }
}

abstract class _ForecastList implements ForecastList {
  const factory _ForecastList({required final List<Forecast> forecastList}) =
      _$ForecastListImpl;

  factory _ForecastList.fromJson(Map<String, dynamic> json) =
      _$ForecastListImpl.fromJson;

  @override
  List<Forecast> get forecastList;

  /// Create a copy of ForecastList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastListImplCopyWith<_$ForecastListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
