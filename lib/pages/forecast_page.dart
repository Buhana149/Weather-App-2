import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_2/provider/weather_provider.dart';
import 'package:weather_app_2/text_styles/background_gradient.dart';
import 'package:weather_app_2/text_styles/text_style.dart';
import 'package:weather_app_2/utilities/circular_indicator_ui.dart';
import 'package:weather_app_2/utilities/forecast_tile.dart';
import 'package:weather_app_2/utilities/forecast_extension.dart';

class ForecastPage extends StatefulWidget {
  const ForecastPage({super.key});

  @override
  State<ForecastPage> createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage> {
  final WeatherProvider weatherProvider = WeatherProvider();

  @override
  void initState() {
    // TODO: implement initState
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
                            itemCount:
                                value.forecast?.forecast.forecastday.length,
                            itemBuilder: (context, index) {
                              return ForecastTile(
                                iconImage: value.forecast?.forecast
                                        .forecastday[index].formattedIconUrl ??
                                    '',
                                avgTemp: value.forecast?.forecast
                                        .forecastday[index].formattedAvgTemp ??
                                    '',
                                weatherCondition: value.forecast?.forecast
                                        .forecastday[index].weatherCondition ??
                                    '',
                                maxMinTemp: value.forecast?.forecast
                                        .forecastday[index].maxMinTemp ??
                                    '',
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
