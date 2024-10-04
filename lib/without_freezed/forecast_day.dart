import 'package:weather_app_2/without_freezed/forecast_condition.dart';

class ForecastDay {
  final String maxtemp_c;
  final String mintemp_c;
  final ForecastCondition condition;
  final String avgtemp_c;

  ForecastDay({
    required this.maxtemp_c,
    required this.mintemp_c,
    required this.condition,
    required this.avgtemp_c,
  });
  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    return ForecastDay(
      maxtemp_c: json['maxtemp_c'],
      mintemp_c: json['mintemp_c'],
      condition: json['condition'],
      avgtemp_c: json['avgtemp_c'],
    );
  }

  Map<String, dynamic> toJson() => {
        'maxtemp_c': maxtemp_c,
        'mintemp_c' : mintemp_c,
        'condition': condition,
        'avgtemp_c' : avgtemp_c,
      };
}
