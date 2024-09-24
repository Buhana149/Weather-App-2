import 'package:flutter/material.dart';
import 'package:weather_app_2/text_styles/background_gradient.dart';

class CircularIndicatorUi extends StatelessWidget {
  const CircularIndicatorUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:purpleGradient,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
