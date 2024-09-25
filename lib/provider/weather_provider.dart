import 'package:flutter/material.dart';
import 'package:weather_app_2/services/weather_services.dart';
import 'package:weather_app_2/ui_utilities/city_selection_dialog.dart';
import 'package:weather_app_2/ui_utilities/showCustomDialog.dart';

class WeatherProvider extends ChangeNotifier {
  final WeatherServices _weatherServices = WeatherServices();

  String cityTitle = 'London';

  Map<String, dynamic>? _currentWeather;
  Map<String, dynamic>? get currentWeather => _currentWeather;

  List<dynamic>? _forecast;
  List<dynamic>? get forecast => _forecast;

  Future<void> fetchWeatherProvider() async {
    try {
      final weatherData = await _weatherServices.fetchCurrentWeather(cityTitle);
      _currentWeather = weatherData;
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<void> fetchForecastProvider() async {
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

  void showCitySelectionDialog(context) {
    showCustomDialog(
        context: context,
        dialogContent: CitySelectionDialog(
          onSelected: (city) {
            final selectedCity = city as Map<String, dynamic>?;
            cityTitle = selectedCity?['name'] ?? 'Unknown City';
            notifyListeners();
          },
          itemBuilder: (context, suggestion) {
            final citySuggestion = suggestion as Map<String, dynamic>?;
            return ListTile(
              title: Text(citySuggestion?['name'] ?? 'Unknown City'),
            );
          },
          suggestionsCallback: (pattern) async {
            return await fetchCitySuggestionsProvider(pattern);
          },
          onPressedCancel: () {
            Navigator.pop(context);
            notifyListeners();
          },
          onPressedSubmit: () {
            Navigator.pop(context);
            fetchWeatherProvider();
            notifyListeners();
          },
        ));
  }
}
