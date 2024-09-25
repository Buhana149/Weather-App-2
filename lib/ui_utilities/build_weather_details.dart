import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app_2/text_styles/background_gradient.dart';
import 'package:weather_app_2/text_styles/text_style.dart';

class BuildWeatherDetails extends StatelessWidget {
  final String label;
  final IconData icon;
  final value;
  const BuildWeatherDetails({
    super.key,
    required this.label,
    required this.icon,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
            padding: EdgeInsets.all(5),
            width: 110,
            height: 110,
            decoration: forecastTileGradient,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  label,
                  style: fontSizeSmallBold,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  value is String ? value : value.toString(),
                  style: fontSizeSmall,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
