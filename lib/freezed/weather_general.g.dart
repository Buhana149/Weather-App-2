// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_general.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherGeneralImpl _$$WeatherGeneralImplFromJson(Map<String, dynamic> json) =>
    _$WeatherGeneralImpl(
      location: LocationName.fromJson(json['location'] as Map<String, dynamic>),
      current: CurrentWeather.fromJson(json['current'] as Map<String, dynamic>),
      forecast: ForecastList.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherGeneralImplToJson(
        _$WeatherGeneralImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
      'forecast': instance.forecast,
    };
