import 'package:flutter/material.dart';

Future<void> showCustomDialog({
  required BuildContext context,
  required Widget dialogContent,
}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialogContent;
      });
}
