import 'package:flutter/material.dart';
import 'package:weather_app_2/provider/weather_provider.dart';
import 'package:weather_app_2/ui_utilities/city_selection_dialog.dart';
import 'package:weather_app_2/ui_utilities/showCustomDialog.dart';

void showCitySelectionDialog(
  BuildContext context,
  Function(String) onSelected,
  WeatherProvider value,
 String cityTitle,
) {
  showCustomDialog(
      context: context,
      dialogContent: CitySelectionDialog(
        onSelected: (city) {
          
          cityTitle = city as String;
          onSelected(cityTitle);
        },
        itemBuilder: (context, suggestion) {
          final citySuggestion = suggestion as Map<String, dynamic>?;
          return ListTile(
            title: Text(citySuggestion?['name'] ?? 'Unknown City'),
          );
        },
        suggestionsCallback: (pattern) async {
          return await value.fetchCitySuggestionsProvider(pattern);
        },
        onPressedCancel: () {
          Navigator.pop(context);
        },
        onPressedSubmit: () {
          Navigator.pop(context);
          value.fetchWeatherProvider(cityTitle);
        },
      ));
}
