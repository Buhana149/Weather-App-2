import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_2/freezed/current_condition.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    required String temp_c,
    required CurrentCondition condition,
    required String wind_kph,
    required String humidity,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}
