import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_2/pages/home_page.dart';
import 'package:weather_app_2/provider/weather_provider.dart';


void main() {
  runApp(
    const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
        create: (context) => WeatherProvider(),
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )); 
  }
}
