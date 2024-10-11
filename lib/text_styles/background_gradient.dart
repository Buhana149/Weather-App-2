import 'package:flutter/material.dart';

final BoxDecoration purpleGradient = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFF1A2344),
        Color.fromARGB(255, 125, 32, 142),
        Colors.purple,
        Color.fromARGB(255, 151, 44, 170),
      ]),
);
final BoxDecoration forecastTileGradient = BoxDecoration(
  gradient: LinearGradient(
      begin: AlignmentDirectional.topStart,
      end: AlignmentDirectional.bottomEnd,
      colors: [
        Color(0xFF1A2344).withOpacity(0.5),
        Color(0xFF1A2344).withOpacity(0.2),
      ]),
);
