import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app_2/text_styles/background_gradient.dart';
import 'package:weather_app_2/text_styles/text_style.dart';

class ForecastTile extends StatelessWidget {
  final String iconImage;
  final String avgTemp;
  final String weatherCondition;
  final String maxMinTemp;

  const ForecastTile({
    super.key,
    required this.iconImage,
    required this.avgTemp,
    required this.weatherCondition,
    required this.maxMinTemp,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
              padding: EdgeInsets.all(5),
              height: 110,
              decoration: forecastTileGradient,
              child: ListTile(
                leading: Image.network(iconImage),
                title: Text(
                  avgTemp,
                  style: fontSizeMedium,
                ),
                subtitle: Text(
                  weatherCondition,
                  style: fontSizeXSmall,
                ),
                trailing: Text(
                  maxMinTemp,
                  style: fontSizeSmall,
                ),
              )),
        ),
      ),
    );
    
  }
}
