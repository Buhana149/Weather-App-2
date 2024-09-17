import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:weather_app_2/services/weather_services.dart';

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
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter City Name'),
          content: TypeAheadField(builder: (context, controller, focusNode) {
            return TextField(
              controller: controller,
              focusNode: focusNode,
              autofocus: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'City',
              ),
            );
          }, itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text(suggestion['name']),
            );
          }, onSelected: (city) {
            cityTitle = city['name'];
            notifyListeners();
          }, suggestionsCallback: (pattern) async {
            return await fetchCitySuggestionsProvider(pattern);
          }),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                notifyListeners();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                fetchWeatherProvider();
                notifyListeners();
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }
}
