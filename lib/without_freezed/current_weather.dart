import 'package:weather_app_2/without_freezed/current_condition.dart';

class CurrentWeather {
  final String temp_c;
  final CurrentCondition condition;
  final String wind_kph;
  final String humidity;

  CurrentWeather({
    required this.temp_c,
    required this.condition,
    required this.wind_kph,
    required this.humidity,
  });
  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      temp_c: json['temp_c'],
      condition: json['condition'],
      wind_kph: json['wind_kph'],
      humidity: json['humidity'],
    );
  }

  Map<String, dynamic> toJson() => {
        'temp_c': temp_c,
        'condition': condition,
        'wind_kph': wind_kph,
        'humidity': humidity,
      };
}
