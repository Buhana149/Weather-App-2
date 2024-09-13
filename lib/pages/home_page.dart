import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';
import 'package:weather/weather.dart';
import 'package:weather_app_2/consts.dart';
import 'package:weather_app_2/provider/weather_provide.dart';
import 'package:weather_app_2/ui_utilities/weather_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final WeatherFactory _wf = WeatherFactory(OPEN_WEATHER_API_KEY);
  String _city = 'Boston';

  Weather? _weather;
  WeatherProvider? _weatherProvider;

  @override
  void initState() {
    super.initState();
    _wf.currentWeatherByCityName(_city).then((w) {
      setState(() {
        _weather = w;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(builder: (context, provider, child) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: const WeatherAppbar(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(3, -0.3),
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-3, -0.3),
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, -1.2),
                    child: Container(
                      height: 300,
                      width: 600,
                      decoration:
                          const BoxDecoration(color: Colors.orangeAccent),
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 100,
                      sigmaY: 100,
                    ),
                    child: Container(
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.08,
                        ),
                        InkWell(
                          onTap: _showCitySelectionDialog,
                          child: Text(
                            _city,
                            style: const TextStyle(
                              fontSize: 36,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // _dateTimeInfo(),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.05,
                        ),
                        // _weatherIcon(),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.02,
                        ),
                        // _currentTemp(),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.02,
                        ),
                        // _extraInfo(),
                      ],
                    ),
                  )
                ],
              )),
        ),
      );
    });
  }

  void _showCitySelectionDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Enter City Name'),
            content: TypeAheadField(
              builder: (context, controller, focusNode) {
                return TextField(
                  controller: controller,
                  focusNode: focusNode,
                  autofocus: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'City'),
                );
              },
              itemBuilder: (context, suggestion) {
                return ListTile(
                  title: Text(suggestion?['areaName'] ?? 'Unknown City'),
                );
              },
              onSelected: (city) {
                setState(() {
                  _city = city?['areaName'] ?? 'Unknown City';
                });
              },
              suggestionsCallback: (pattern) async {
                final suggestions =
                    await _weatherProvider?.locationHeaderProvider(pattern);
                return suggestions ?? [];
              },
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                  onPressed: () async {
                    Navigator.pop(context);
                    _weatherProvider?.locationHeaderProvider(_city);
                  },
                  child: const Text('Submit'))
            ],
          );
        });
  }
}
