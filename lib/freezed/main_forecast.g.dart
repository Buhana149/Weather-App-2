// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainForecastImpl _$$MainForecastImplFromJson(Map<String, dynamic> json) =>
    _$MainForecastImpl(
      forecastday:
          ForecastList.fromJson(json['forecastday'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MainForecastImplToJson(_$MainForecastImpl instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastday,
    };
