import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weather_app_2/data/my_data.dart';

class WeatherProvider extends ChangeNotifier {
  MyData? data;
  Weather? _weather;

  Future<List <dynamic>> locationHeaderProvider(
      String pattern) async {
    try {
      final header = _weather != null
          ? [
              {'areaName': _weather!.areaName}
            ]
          : [];
      notifyListeners();
      return header;
    } catch (e) {
      print('Error fetching location header: $e');
      return [];
    }
  }

  void dateTimeInfoProvider() {
    data?.dateTimeInfo();
    notifyListeners();
  }

  void weatherIconProvider() {
    data?.weatherIcon();
    notifyListeners();
  }

  void currentTempProvider() {
    data?.currentTemp();
    notifyListeners();
  }

  void extraInfoProvider() {
    data?.extraInfo();
    notifyListeners();
  }
}
