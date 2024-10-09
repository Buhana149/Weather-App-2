import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_2/freezed/current_condition.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  factory CurrentWeather({
    required double temp_c,
    required CurrentCondition condition,
    required double wind_kph,
    required int humidity,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}
