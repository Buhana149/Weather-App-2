import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWeatherDetails extends StatelessWidget {
  final String networkImage;
  final String currentTemp;
  final String currentCondition;
  final String maxTemp;
  final String minTemp;

  const HomeWeatherDetails({
    super.key,
    required this.networkImage,
    required this.currentTemp,
    required this.currentCondition,
    required this.maxTemp,
    required this.minTemp,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.network(
            networkImage,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          Text(
            currentTemp,
            style: GoogleFonts.lato(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            currentCondition,
            style: GoogleFonts.lato(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                maxTemp,
                style: GoogleFonts.lato(
                  fontSize: 22,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                minTemp,
                style: GoogleFonts.lato(
                  fontSize: 22,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
