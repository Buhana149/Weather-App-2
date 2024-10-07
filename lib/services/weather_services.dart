import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app_2/freezed/weather_general.dart';

class WeatherServices {
  final String apiKey = 'b54337d603f9490996f95851241609';
  final String forecastBaseUrl = 'http://api.weatherapi.com/v1/forecast.json';
  final String searchBaseUrl = 'http://api.weatherapi.com/v1/search.json';

  Future<WeatherGeneral> fetchCurrentWeather(String city) async {
    final url = '$forecastBaseUrl?key=$apiKey&q=$city&days=1&aqi=no&alerts=no';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      return WeatherGeneral.fromJson(jsonBody);
    } else
      throw Exception('Failed to load weather data');
  }

  Future<WeatherGeneral> fetch7DayForecast(String city) async {
    final url = '$forecastBaseUrl?key=$apiKey&q=$city&days=7&aqi=no&alerts=no';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      return WeatherGeneral.fromJson(jsonBody);
    } else
      throw Exception('Failed to load forecast data');
  }

  Future<List<dynamic>?> fetchCitySuggestions(String query) async {
    final url = '$searchBaseUrl?key=$apiKey&q=$query';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else
      return null;
  }
}
