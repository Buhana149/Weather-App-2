import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: AlignmentDirectional.topStart,
                            end: AlignmentDirectional.bottomEnd,
                            colors: [
                              Color(0xFF1A2344).withOpacity(0.5),
                              Color(0xFF1A2344).withOpacity(0.2),
                            ]),
                            
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(icon,
                            color: Colors.white,
                             ),
                             SizedBox(height: 8,),
                             Text(label,
                             style: GoogleFonts.lato(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                             ), ),
                             SizedBox(height: 8,),
                             Text(value is String ? value: value.toString(),
                             style: GoogleFonts.lato(
                              fontSize: 18,
                              color: Colors.white,
                              
                             ), )
                          ],
                        ),
                      ),
                      ),);
  }
}
