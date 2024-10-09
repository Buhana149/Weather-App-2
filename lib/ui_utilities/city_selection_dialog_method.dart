import 'package:flutter/material.dart';
import 'package:weather_app_2/freezed/weather_general.dart';
import 'package:weather_app_2/provider/weather_provider.dart';
import 'package:weather_app_2/ui_utilities/city_selection_dialog.dart';
import 'package:weather_app_2/ui_utilities/showCustomDialog.dart';

void showCitySelectionDialog(
  BuildContext context,
  void Function(String) onSelected,
  WeatherProvider value,
  String cityTitle,
  final void Function()? onPressedSubmit,
) {
  showCustomDialog(
      context: context,
      dialogContent: CitySelectionDialog(
        onSelected: (locationMap) {
          if (locationMap is Map<String, dynamic>) {
            cityTitle = locationMap["name"] as String;
            onSelected(cityTitle);
          } else {
            print("error location name cannot be extracted from locationMap");
          }
          
        },
        itemBuilder: (context, suggestion) {
          final citySuggestion = suggestion as WeatherGeneral;
          return ListTile(
            title: Text(citySuggestion.location.name),
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
          onPressedSubmit!();
        },
      ));
}
