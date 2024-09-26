import 'package:flutter/material.dart';
import 'package:weather_app_2/services/weather_services.dart';
import 'package:weather_app_2/ui_utilities/city_selection_dialog_method.dart';

class WeatherProvider extends ChangeNotifier {
  final WeatherServices _weatherServices = WeatherServices();
  String cityTitle = 'London';
  Map<String, dynamic>? _currentWeather;
  Map<String, dynamic>? get currentWeather => _currentWeather;

  List<dynamic>? _forecast;
  List<dynamic>? get forecast => _forecast;

  Future<void> fetchWeatherProvider(String cityTitle) async {
    try {
      final weatherData = await _weatherServices.fetchCurrentWeather(cityTitle);
      _currentWeather = weatherData;
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<void> fetchForecastProvider(String cityTitle) async {
    try {
      final forecastData = await _weatherServices.fetch7DayForecast(cityTitle);

      _forecast = forecastData['forecast']['forecastday'];
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

  Future<void> showCitySelection(BuildContext context, WeatherProvider value, String cityTitle) async {
    try {
      showCitySelectionDialog(context, (city) {

        // cityTitle = city['name'];
        fetchWeatherProvider(cityTitle);
      },
      value,
      cityTitle);
    } catch (e) {
      print(e);
    } finally {
      notifyListeners();
    }
  }
}
