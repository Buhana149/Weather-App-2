import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app_2/freezed/forecast_list.dart';
import 'package:weather_app_2/freezed/main_forecastday.dart';
import 'package:weather_app_2/freezed/weather_general.dart';

class WeatherServices {
  final String apiKey = 'b54337d603f9490996f95851241609';
  final String forecastBaseUrl = 'http://api.weatherapi.com/v1/forecast.json';
  final String searchBaseUrl = 'http://api.weatherapi.com/v1/search.json';

  Future<WeatherGeneral> fetchCurrentWeather(String city) async {
    try {
      final jsonMap = json.decode(apiresponse);
      final list = MainForecastday.fromJson(jsonMap);
      print('Lista de teste este $list');
    } catch (e) {
      print('Error is $e');
    }

    final url = '$forecastBaseUrl?key=$apiKey&q=$city&days=1&aqi=no&alerts=no';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      return WeatherGeneral.fromJson(jsonBody);
    } else
      throw Exception('Failed to load weather data');
  }

  Future<ForecastList> fetch7DayForecast(String city) async {
    final url = '$forecastBaseUrl?key=$apiKey&q=$city&days=7&aqi=no&alerts=no';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      return ForecastList.fromJson(jsonBody);
    } else
      throw Exception('Failed to load forecast data');
  }

  Future<List<WeatherGeneral>?> fetchCitySuggestions(String query) async {
    final url = '$searchBaseUrl?key=$apiKey&q=$query';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else
      return null;
  }
}

final apiresponse = '''
{
  "forecast": {
    "forecastday": [
      {
        "date": "2024-10-07",
        "date_epoch": 1728259200,
        "day": {
          "maxtemp_c": 18.3,
          "maxtemp_f": 64.9,
          "mintemp_c": 12.2,
          "mintemp_f": 54,
          "avgtemp_c": 14.7,
          "avgtemp_f": 58.4,
          "maxwind_mph": 12.5,
          "maxwind_kph": 20.2,
          "totalprecip_mm": 5.52,
          "totalprecip_in": 0.22,
          "totalsnow_cm": 0,
          "avgvis_km": 9.8,
          "avgvis_miles": 6,
          "avghumidity": 80,
          "daily_will_it_rain": 1,
          "daily_chance_of_rain": 91,
          "daily_will_it_snow": 0,
          "daily_chance_of_snow": 0,
          "condition": {
            "text": "Moderate rain",
            "icon": "//cdn.weatherapi.com/weather/64x64/day/302.png",
            "code": 1189
          },
          "uv": 2
        },
        "astro": {
          
        },
        "hour": [
          
        ]
      },
      {
        "date": "2024-10-08",
        "date_epoch": 1728345600,
        "day": {
          
        },
        "astro": {
          "sunrise": "07:13 AM",
          "sunset": "06:21 PM",
          "moonrise": "01:50 PM",
          "moonset": "08:22 PM",
          "moon_phase": "Waxing Crescent",
          "moon_illumination": 23,
          "is_moon_up": 0,
          "is_sun_up": 0
        },
        "hour": [
          
        ]
      }
    ]
  }
}
''';
