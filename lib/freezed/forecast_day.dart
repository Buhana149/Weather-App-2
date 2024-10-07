import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_2/freezed/forecast_condition.dart';

part 'forecast_day.freezed.dart';
part 'forecast_day.g.dart';

@freezed
class ForecastDay with _$ForecastDay {
  const factory ForecastDay({
    required double maxtemp_c,
    required double mintemp_c,
    required double avgtemp_c,
    required ForecastCondition condition,
  }) = _ForecastDay;

  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);
}
