// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastImpl _$$ForecastImplFromJson(Map<String, dynamic> json) =>
    _$ForecastImpl(
      date: json['date'] as String,
      day: ForecastDay.fromJson(json['day'] as Map<String, dynamic>),
      astro: ForecastAstro.fromJson(json['astro'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastImplToJson(_$ForecastImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
      'astro': instance.astro,
    };
