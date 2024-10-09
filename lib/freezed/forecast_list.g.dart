// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastListImpl _$$ForecastListImplFromJson(Map<String, dynamic> json) =>
    _$ForecastListImpl(
      forecastday: (json['forecastday'] as List<dynamic>)
          .map((e) => Forecast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ForecastListImplToJson(_$ForecastListImpl instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastday,
    };
