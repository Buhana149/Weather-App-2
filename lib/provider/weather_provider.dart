import 'package:flutter/material.dart';
import 'package:weather_app_2/freezed/location_name.dart';
import 'package:weather_app_2/freezed/weather_general.dart';
import 'package:weather_app_2/services/weather_services.dart';

class WeatherProvider extends ChangeNotifier {
  final WeatherServices _weatherServices = WeatherServices();

  WeatherGeneral? _currentWeather;
  WeatherGeneral? get currentWeather => _currentWeather;

  String? _cityTitle = 'London';
  String? get cityTitle => _cityTitle;

  WeatherGeneral? _forecast;
 WeatherGeneral? get forecast => _forecast;

  void setCityTitle(String cityTitle) {
    _cityTitle = cityTitle;
    if (_cityTitle != null && _cityTitle!.isNotEmpty) {
      fetchWeatherProvider();
    } else {
      print('Invalid city title');
    }
  }

  Future<void> fetchWeatherProvider() async {
    try {
      final weatherData =
          await _weatherServices.fetchCurrentWeather(cityTitle!);
          
      _currentWeather = weatherData;
      notifyListeners();
    } catch (e) {
      print('Error is $e from fetchWeatherProvider');
    }
  }

  Future<void> fetchForecastProvider() async {
    try {
      final forecastData =
          await _weatherServices.fetch7DayForecast(cityTitle ?? 'London');
      _forecast = forecastData;
      notifyListeners();
    } catch (e) {
      print('Error is $e from fetchForecastProvider');
    }
  }

  Future<List<LocationName>?> fetchCitySuggestionsProvider(pattern) async {
    try {
      final citySuggestion = _weatherServices.fetchCitySuggestions(pattern);
      return citySuggestion;
    } catch (e) {
      print('Error is $e from fetchCitySuggestionsProvider');
      return null;
    } finally {
      notifyListeners();
    }
  }
}
