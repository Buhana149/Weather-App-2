import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class CitySelectionDialog extends StatelessWidget {

  final Widget Function(BuildContext, Object?) itemBuilder;
  final void Function(Object?)? onSelected;
  final FutureOr<List<Object?>?> Function(String) suggestionsCallback;
  final void Function()? onPressedCancel;
  final void Function()? onPressedSubmit;
  
  const CitySelectionDialog({
    super.key,
    required this.onSelected,
    required this.itemBuilder,
    required this.suggestionsCallback,
    required this.onPressedCancel,
    required this.onPressedSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Enter City Name'),
      content: TypeAheadField(
        builder: (context, controller, focusNode) {
          return TextField(
            controller: controller,
            focusNode: focusNode,
            autofocus: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'City',
            ),
          );
        },
        itemBuilder: itemBuilder,
        onSelected: onSelected,
        suggestionsCallback: suggestionsCallback,
      ),
      actions: [
        TextButton(
          onPressed: onPressedCancel,
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: onPressedSubmit,
          child: Text('Submit'),
        ),
      ],
    );
  }
}
