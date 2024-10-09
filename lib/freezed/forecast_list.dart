import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_2/freezed/forecast.dart';

part 'forecast_list.freezed.dart';
part 'forecast_list.g.dart';

@freezed
class ForecastList with _$ForecastList {
  const factory ForecastList({
    required List<Forecast> forecastday,
  }) = _ForecastList;

  factory ForecastList.fromJson(Map<String, dynamic> json) =>
      _$ForecastListFromJson(json);
}
