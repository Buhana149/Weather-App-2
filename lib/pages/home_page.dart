import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_2/pages/forecast_page.dart';
import 'package:weather_app_2/provider/weather_provider.dart';
import 'package:weather_app_2/text_styles/background_gradient.dart';
import 'package:weather_app_2/text_styles/text_style.dart';
import 'package:weather_app_2/ui_utilities/build_weather_details.dart';
import 'package:weather_app_2/ui_utilities/circular_indicator_ui.dart';
import 'package:weather_app_2/ui_utilities/city_selection_dialog_method.dart';
import 'package:weather_app_2/ui_utilities/forecast_button.dart';
import 'package:weather_app_2/ui_utilities/home_weather_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final WeatherProvider weatherProvider = WeatherProvider();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Provider.of<WeatherProvider>(context, listen: false)
          .fetchWeatherProvider();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(builder: (context, value, child) {
      return Scaffold(
        body: value.currentWeather == null
            ? CircularIndicatorUi()
            : Container(
                padding: EdgeInsets.all(20),
                decoration: purpleGradient,
                child: ListView(
                  children: [
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        void Function(String) onSelected = (selectedValue) { 
                          value.setCityTitle(selectedValue);
                        };
                        void Function() onPress = () {
                          value.fetchWeatherProvider();
                        };
                        
                        showCitySelectionDialog(context, onSelected, value, value.cityTitle!, onPress);
                      },
                      child: Text(
                        value.cityTitle!,
                        style: fontSizeXLarge,
                      ),
                    ),
                    SizedBox(height: 10),
                    HomeWeatherDetails(
                      networkImage:
                          'http:${value.currentWeather?['current']['condition']['icon']}',
                      currentTemp:
                          '${value.currentWeather?['current']['temp_c'].round()}°C',
                      currentCondition:
                          '${value.currentWeather?['current']['condition']['text']}',
                      maxTemp:
                          'Max: ${value.currentWeather?['forecast']['forecastday'][0]['day']['maxtemp_c'].round()}°C',
                      minTemp:
                          'Min: ${value.currentWeather?['forecast']['forecastday'][0]['day']['mintemp_c'].round()}°C',
                    ),
                    SizedBox(height: 45),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BuildWeatherDetails(
                            label: 'Sunrise',
                            icon: Icons.wb_sunny,
                            value: value.currentWeather!['forecast']
                                ['forecastday'][0]['astro']['sunrise']),
                        BuildWeatherDetails(
                            label: 'Sunset',
                            icon: Icons.brightness_3,
                            value: value.currentWeather!['forecast']
                                ['forecastday'][0]['astro']['sunset']),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BuildWeatherDetails(
                            label: 'Humidity',
                            icon: Icons.opacity,
                            value: value.currentWeather?['current']
                                ['humidity']),
                        BuildWeatherDetails(
                            label: 'Wind (KPH)',
                            icon: Icons.wind_power,
                            value: value.currentWeather?['current']
                                ['wind_kph']),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ForecastButton(builder: (context) => ForecastPage()),
                  ],
                ),
              ),
      );
    });
  }
}
