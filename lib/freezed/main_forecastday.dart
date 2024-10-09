import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_2/freezed/forecast_list.dart';

part 'main_forecastday.freezed.dart';
part 'main_forecastday.g.dart';

@freezed
class MainForecastday with _$MainForecastday {
  const factory MainForecastday({
    required ForecastList forecast,
  }) = _MainForecastday;

  factory MainForecastday.fromJson(Map<String, dynamic> json) =>
      _$MainForecastdayFromJson(json);
}
