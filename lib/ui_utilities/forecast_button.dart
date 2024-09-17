import 'package:flutter/material.dart';

class ForecastButton extends StatelessWidget {
 final Widget Function(BuildContext) builder;
  const ForecastButton({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: builder));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF1A2344),
        ),
        child: Text(
          'Next 7 Days Forecast',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
