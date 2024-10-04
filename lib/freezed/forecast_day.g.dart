// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastDayImpl _$$ForecastDayImplFromJson(Map<String, dynamic> json) =>
    _$ForecastDayImpl(
      maxtemp_c: json['maxtemp_c'] as String,
      mintemp_c: json['mintemp_c'] as String,
      condition:
          ForecastCondition.fromJson(json['condition'] as Map<String, dynamic>),
      avgtemp_c: json['avgtemp_c'] as String,
    );

Map<String, dynamic> _$$ForecastDayImplToJson(_$ForecastDayImpl instance) =>
    <String, dynamic>{
      'maxtemp_c': instance.maxtemp_c,
      'mintemp_c': instance.mintemp_c,
      'condition': instance.condition,
      'avgtemp_c': instance.avgtemp_c,
    };
