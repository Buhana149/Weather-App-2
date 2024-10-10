import 'package:weather_app_2/freezed/forecast.dart';

extension ForecastExtension on Forecast {
  String get formattedIconUrl {
    return 'http:${this.day.condition.icon}';
  }

  String get formattedAvgTemp {
    return '${this.date}\n${this.day.avgtemp_c.toInt()} °C';
  }

  String get weatherCondition {
    return this.day.condition.text;
  }

  String get maxMinTemp {
    return 'Max: ${this.day.maxtemp_c.toInt()} °C\nMin: ${this.day.mintemp_c.toInt()} °C';
  }
}
