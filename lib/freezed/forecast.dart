import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_2/freezed/forecast_astro.dart';
import 'package:weather_app_2/freezed/forecast_day.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
class Forecast with _$Forecast {
  const factory Forecast({
    required String date,
    required ForecastDay day,
    required ForecastAstro astro,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}
