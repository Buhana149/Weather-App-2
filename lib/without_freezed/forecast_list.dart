import 'package:weather_app_2/without_freezed/forecast.dart';

class ForecastList {
  final List<Forecast> forecastList;

  ForecastList({
    required this.forecastList,
  });

  factory ForecastList.fromJson(Map<String, dynamic> json) {
    return ForecastList(
      forecastList: json['forecastList'],
    );
  }

  Map<String, dynamic> toJson() => {
        'forecastList': forecastList,
      };
}
