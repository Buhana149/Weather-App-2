import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_2/freezed/current_weather.dart';
import 'package:weather_app_2/freezed/forecast_list.dart';
import 'package:weather_app_2/freezed/location_name.dart';
import 'package:weather_app_2/freezed/main_forecast.dart';

part 'weather_general.freezed.dart';
part 'weather_general.g.dart';

@freezed
class WeatherGeneral with _$WeatherGeneral {
  factory WeatherGeneral({
    required LocationName location,
    required CurrentWeather current,
    required ForecastList forecast,
  }) = _WeatherGeneral;

  factory WeatherGeneral.fromJson(Map<String, dynamic> json) =>
      _$WeatherGeneralFromJson(json);
}
