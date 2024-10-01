import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_2/provider/weather_provider.dart';
import 'package:weather_app_2/text_styles/background_gradient.dart';
import 'package:weather_app_2/text_styles/text_style.dart';
import 'package:weather_app_2/ui_utilities/circular_indicator_ui.dart';
import 'package:weather_app_2/ui_utilities/forecast_tile.dart';

class ForecastPage extends StatefulWidget {

  const ForecastPage({super.key});

  @override
  State<ForecastPage> createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage> {
  
  final WeatherProvider weatherProvider = WeatherProvider();
  

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Provider.of<WeatherProvider>(context, listen: false)
          .fetchForecastProvider();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(builder: (context, value, child) {
      return SafeArea(
        child: Scaffold(
          body: value.forecast == null
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
                            itemCount: value.forecast?.length ?? 0,
                            itemBuilder: (context, index) {
                              final day = value.forecast?[index] ?? 0;
                              String iconUrl =
                                  'http:${day['day']['condition']['icon']}';
                              return ForecastTile(
                                iconImage: iconUrl,
                                avgTemp:
                                    '${day['date']}\n${day['day']['avgtemp_c'].round()} °C',
                                weatherCondition: day['day']['condition']
                                    ['text'],
                                maxMinTemp:
                                    'Max:${day['day']['maxtemp_c']} °C\nMin:${day['day']['mintemp_c']}',
                              );
                            })
                      ],
                    ),
                  )),
        ),
      );
    });
  }
}
