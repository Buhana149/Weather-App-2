import 'package:flutter/material.dart';
import 'package:weather_app_2/freezed/forecast_list.dart';
import 'package:weather_app_2/freezed/weather_general.dart';
import 'package:weather_app_2/services/weather_services.dart';

class WeatherProvider extends ChangeNotifier {
  final WeatherServices _weatherServices = WeatherServices();

  WeatherGeneral? _currentWeather;
  WeatherGeneral? get currentWeather => _currentWeather;

  String? _cityTitle = 'London';
  String? get cityTitle => _cityTitle;

  List<WeatherGeneral>? _forecast;
  List<WeatherGeneral>? get forecast => _forecast;

  void setCityTitle(String cityTitle) {
    _cityTitle = cityTitle;
    fetchWeatherProvider();
  }

  Future<void> fetchWeatherProvider() async {
    try {
      final weatherData =
          await _weatherServices.fetchCurrentWeather(cityTitle!);
      _currentWeather = weatherData;
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<void> fetchForecastProvider() async {
    try {
      final forecastData =
          await _weatherServices.fetch7DayForecast(cityTitle ?? 'London');
      _forecast = forecastData.location.name as List<WeatherGeneral>;
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<List<WeatherGeneral>?> fetchCitySuggestionsProvider(pattern) async {
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
