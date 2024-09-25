import 'package:flutter/material.dart';

class CircularIndicatorUi extends StatelessWidget {
  const CircularIndicatorUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xFF1A2344),
            Color.fromARGB(255, 125, 32, 142),
            Colors.purple,
            Color.fromARGB(255, 151, 44, 170),
          ])),
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
