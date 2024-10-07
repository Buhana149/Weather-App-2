import 'package:flutter/material.dart';
import 'package:weather_app_2/services/weather_services.dart';

class WeatherProvider extends ChangeNotifier {
  
  final WeatherServices _weatherServices = WeatherServices();
  
  Map<String, dynamic>? _currentWeather;
  Map<String, dynamic>? get currentWeather => _currentWeather;

  String? _cityTitle = 'London';
  String? get cityTitle => _cityTitle;

  List<dynamic>? _forecast;
  List<dynamic>? get forecast => _forecast;

  void setCityTitle(String cityTitle) {
    _cityTitle = cityTitle;
    fetchWeatherProvider();
  }

  Future<void> fetchWeatherProvider() async {
    try {
      final weatherData = await _weatherServices.fetchCurrentWeather(cityTitle!) as Map<String, dynamic>;
      _currentWeather = weatherData;
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<void> fetchForecastProvider() async {
    try {
      final forecastData = await _weatherServices.fetch7DayForecast(cityTitle ?? 'London');
      _forecast = forecastData.location.name as List;
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<List<dynamic>?> fetchCitySuggestionsProvider(pattern) async {
    try {
      final citySuggestion = _weatherServices.fetchCitySuggestions(pattern);
      return citySuggestion;
    } catch (e) {
      print(e);
      return null;
    } finally {
      notifyListeners();
    }
  }
}
