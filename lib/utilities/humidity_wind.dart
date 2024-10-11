import 'package:flutter/material.dart';
import 'package:weather_app_2/utilities/build_weather_details.dart';

class HumidityWindIndicator extends StatelessWidget {
  final humidityValue;
  final windValue;
  const HumidityWindIndicator({
    super.key,
    required this.humidityValue,
    required this.windValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BuildWeatherDetails(
            label: 'Humidity', icon: Icons.opacity, value: humidityValue),
        BuildWeatherDetails(
            label: 'Wind (KPH)', icon: Icons.wind_power, value: windValue),
      ],
    );
  }
}
