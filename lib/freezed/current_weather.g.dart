// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherImpl _$$CurrentWeatherImplFromJson(Map<String, dynamic> json) =>
    _$CurrentWeatherImpl(
      temp_c: (json['temp_c'] as num).toDouble(),
      condition:
          CurrentCondition.fromJson(json['condition'] as Map<String, dynamic>),
      wind_kph: (json['wind_kph'] as num).toDouble(),
      humidity: (json['humidity'] as num).toInt(),
    );

Map<String, dynamic> _$$CurrentWeatherImplToJson(
        _$CurrentWeatherImpl instance) =>
    <String, dynamic>{
      'temp_c': instance.temp_c,
      'condition': instance.condition,
      'wind_kph': instance.wind_kph,
      'humidity': instance.humidity,
    };
