import 'package:weather_app_2/without_freezed/forecast_astro.dart';
import 'package:weather_app_2/without_freezed/forecast_day.dart';

class Forecast {
  final String date;
  final ForecastDay day;
  final ForecastAstro astro;

  Forecast({
    required this.date,
    required this.day,
    required this.astro,
  });
  factory Forecast.fromJson(Map<String, dynamic> json) {
    return Forecast(
      date: json['date'],
      day: json['day'],
      astro: json['astro'],

    );
  }

  Map<String, dynamic> toJson() => {
        'date': date,
        'day' : day,
        'astro': astro,
 
      };
}
