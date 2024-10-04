import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_2/freezed/current_weather.dart';
import 'package:weather_app_2/freezed/forecast.dart';

part 'weather_general.freezed.dart';
part 'weather_general.g.dart';

@freezed
class WeatherGeneral with _$WeatherGeneral {
  const factory WeatherGeneral({
    required String location,
    required CurrentWeather current,
    required Forecast forecast,
  }) = _WeatherGeneral;

  factory WeatherGeneral.fromJson(Map<String, dynamic> json) =>
      _$WeatherGeneralFromJson(json);
}
