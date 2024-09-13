import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_2/pages/home_page.dart';
import 'package:weather_app_2/provider/weather_provide.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) =>WeatherProvider(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
