import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_2/pages/forecast_page.dart';
import 'package:weather_app_2/provider/weather_provider.dart';
import 'package:weather_app_2/text_styles/background_gradient.dart';
import 'package:weather_app_2/text_styles/text_style.dart';
import 'package:weather_app_2/utilities/build_weather_details.dart';
import 'package:weather_app_2/utilities/circular_indicator_ui.dart';
import 'package:weather_app_2/utilities/city_selection_dialog_method.dart';
import 'package:weather_app_2/utilities/currentweather_extension.dart';
import 'package:weather_app_2/utilities/forecast_button.dart';
import 'package:weather_app_2/utilities/forecast_extension.dart';
import 'package:weather_app_2/utilities/home_weather_details.dart';

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

                        showCitySelectionDialog(context, onSelected, value,
                            value.cityTitle!, onPress);
                      },
                      child: Text(
                        value.cityTitle ?? '',
                        style: fontSizeXLarge,
                      ),
                    ),
                    SizedBox(height: 10),
                    HomeWeatherDetails(
                      networkImage:
                          value.currentWeather?.current.networkImage ?? '',
                      currentTemp:
                          value.currentWeather?.current.currentTemp ?? '',
                      currentCondition:
                          value.currentWeather?.current.currentCondition ?? '',
                      maxTemp: value.currentWeather?.forecast.forecastday[0]
                              .formattedmaxTemp ??
                          '',
                      minTemp: value.currentWeather?.forecast.forecastday[0]
                              .formattedminTemp ??
                          '',
                    ),
                    SizedBox(height: 45),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BuildWeatherDetails(
                            label: 'Sunrise',
                            icon: Icons.wb_sunny,
                            value: value.currentWeather!.forecast.forecastday[0]
                                .formattedSunrise),
                        BuildWeatherDetails(
                            label: 'Sunset',
                            icon: Icons.brightness_3,
                            value: value.currentWeather!.forecast.forecastday[0]
                                .formattedSunset),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BuildWeatherDetails(
                            label: 'Humidity',
                            icon: Icons.opacity,
                            value: value
                                .currentWeather?.current.formattedHumidity),
                        BuildWeatherDetails(
                            label: 'Wind (KPH)',
                            icon: Icons.wind_power,
                            value:
                                value.currentWeather?.current.formattedWindKph),
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
