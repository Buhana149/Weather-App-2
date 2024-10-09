import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_2/freezed/forecast_list.dart';

part 'main_forecast.freezed.dart';
part 'main_forecast.g.dart';

@freezed
class MainForecast with _$MainForecast {
  factory MainForecast({
    required ForecastList forecastday,
  }) = _MainForecast;

  factory MainForecast.fromJson(Map<String, dynamic> json) =>
      _$MainForecastFromJson(json);
}
