import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextStyle fontSize36 = GoogleFonts.lato(
  fontSize: 36,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
final TextStyle fontSize30 = GoogleFonts.lato(
  fontSize: 30,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
final TextStyle fontSize22 = GoogleFonts.lato(
  fontSize: 22,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
final TextStyle fontSize18 = GoogleFonts.lato(
  fontSize: 18,
  color: Colors.white,
);
final TextStyle fontSize16 = GoogleFonts.lato(
  fontSize: 16,
  color: Colors.white70,
);
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
