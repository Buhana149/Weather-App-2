import 'package:flutter/material.dart';
import 'package:weather_app_2/utilities/build_weather_details.dart';

class SunriseSunsetIndicatiors extends StatelessWidget {
  final sunriseValue;
  final sunsetValue;

  const SunriseSunsetIndicatiors({
    super.key,
    this.sunriseValue,
    this.sunsetValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BuildWeatherDetails(
            label: 'Sunrise', icon: Icons.wb_sunny, value: sunriseValue),
        BuildWeatherDetails(
            label: 'Sunset', icon: Icons.brightness_3, value: sunsetValue),
      ],
    );
  }
}
