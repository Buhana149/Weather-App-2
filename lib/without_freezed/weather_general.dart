import 'package:weather_app_2/without_freezed/current_weather.dart';
import 'package:weather_app_2/without_freezed/forecast_list.dart';
import 'package:weather_app_2/without_freezed/location_name.dart';

class WeatherGeneral {
  final LocationName location;
  final CurrentWeather currentWeather;
  final ForecastList forecast;

  WeatherGeneral({
    required this.location,
    required this.currentWeather,
    required this.forecast,
  });

  factory WeatherGeneral.fromJson(Map<String, dynamic> json) {
    return WeatherGeneral(
      location: json['location'],
      currentWeather: json['currentWeather'],
      forecast: json['forecast'],

    );
  }

  Map<String, dynamic> toJson() => {
        'location': location,
        'currentWeather' : currentWeather,
        'forecast': forecast,
 
      };
}
