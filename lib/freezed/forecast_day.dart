import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_2/freezed/forecast_condition.dart';

part 'forecast_day.freezed.dart';
part 'forecast_day.g.dart';

@freezed
class ForecastDay with _$ForecastDay {
  const factory ForecastDay({
    required String maxtemp_c,
    required String mintemp_c,
    required ForecastCondition condition,
    required String avgtemp_c,
  }) = _ForecastDay;

  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);
}
