import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:weather_app_2/pages/forecast_page.dart';
import 'package:weather_app_2/services/weather_services.dart';
import 'package:weather_app_2/text_styles/background_gradient.dart';
import 'package:weather_app_2/text_styles/text_style.dart';
import 'package:weather_app_2/ui_utilities/build_weather_details.dart';
import 'package:weather_app_2/ui_utilities/circular_indicator_ui.dart';
import 'package:weather_app_2/ui_utilities/forecast_button.dart';
import 'package:weather_app_2/ui_utilities/home_weather_details.dart';
import 'package:weather_app_2/ui_utilities/humidity_wind.dart';
import 'package:weather_app_2/ui_utilities/sunrise_sunset.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final WeatherServices _weatherServices = WeatherServices();
  String _city = 'London';
  Map<String, dynamic>? _currentWeather;

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  Future<void> _fetchWeather() async {
    try {
      final weatherData = await _weatherServices.fetchCurrentWeather(_city);
      setState(() {
        _currentWeather = weatherData;
      });
    } catch (e) {
      print(e);
    }
  }

  void _showCitySelectionDialog() {
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
            setState(() {
              _city = city['name'];
            });
          }, suggestionsCallback: (pattern) async {
            return await _weatherServices.fetchCitySuggestions(pattern);
          }),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _fetchWeather();
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentWeather == null
          ? CircularIndicatorUi()
          : Container(
              padding: EdgeInsets.all(20),
              decoration: purpleGradient,
              child: ListView(
                children: [
                  SizedBox(height: 10),
                  InkWell(
                    onTap: _showCitySelectionDialog,
                    child: Text(
                      _city,
                      style: fontSizeXLarge,
                    ),
                  ),
                  SizedBox(height: 10),
                  HomeWeatherDetails(
                    networkImage:
                        'http:${_currentWeather!['current']['condition']['icon']}',
                    currentTemp:
                        '${_currentWeather!['current']['temp_c'].round()}°C',
                    currentCondition:
                        '${_currentWeather!['current']['condition']['text']}',
                    maxTemp:
                        'Max: ${_currentWeather!['forecast']['forecastday'][0]['day']['maxtemp_c'].round()}°C',
                    minTemp:
                        'Min: ${_currentWeather!['forecast']['forecastday'][0]['day']['mintemp_c'].round()}°C',
                  ),
                  SizedBox(height: 45),
                  SunriseSunsetIndicatiors(
                    sunriseValue: _currentWeather!['forecast']['forecastday'][0]
                        ['astro']['sunrise'],
                    sunsetValue: _currentWeather!['forecast']['forecastday'][0]
                        ['astro']['sunset'],
                  ),
                  const SizedBox(height: 20),
                  HumidityWindIndicator(
                      humidityValue: _currentWeather!['current']['humidity'],
                      windValue: _currentWeather!['current']['wind_kph']),
                  const SizedBox(height: 20),
                  ForecastButton(
                      builder: (context) => ForecastPage(
                            city: _city,
                          )),
                ],
              ),
            ),
    );
  }
}
