import 'package:flutter/material.dart';
import 'package:weather_app_2/services/weather_services.dart';
import 'package:weather_app_2/text_styles/background_gradient.dart';
import 'package:weather_app_2/text_styles/text_style.dart';
import 'package:weather_app_2/ui_utilities/circular_indicator_ui.dart';
import 'package:weather_app_2/ui_utilities/forecast_tile.dart';

class ForecastPage extends StatefulWidget {
  final String city;
  const ForecastPage({super.key, required this.city});

  @override
  State<ForecastPage> createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage> {
  final WeatherServices _weatherServices = WeatherServices();
  List<dynamic>? _forecast;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchForecast();
  }

  Future<void> _fetchForecast() async {
    try {
      final forecastData =
          await _weatherServices.fetch7DayForecast(widget.city);
      setState(() {
        _forecast = forecastData['forecast']['forecastday'];
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _forecast == null
            ? CircularIndicatorUi()
            : Container(
                height: MediaQuery.of(context).size.height,
                decoration: purpleGradient,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              '7 Day Forecast',
                              style: fontSizeLarge,
                            )
                          ],
                        ),
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: _forecast!.length,
                          itemBuilder: (context, index) {
                            final day = _forecast![index];
                            String iconUrl =
                                'http:${day['day']['condition']['icon']}';
                            return ForecastTile(
                              iconImage: iconUrl,
                              avgTemp:
                                  '${day['date']}\n${day['day']['avgtemp_c'].round()} °C',
                              weatherCondition: day['day']['condition']['text'],
                              maxMinTemp:
                                  'Max:${day['day']['maxtemp_c']} °C\nMin:${day['day']['mintemp_c']}',
                            );
                          })
                    ],
                  ),
                )),
      ),
    );
  }
}
