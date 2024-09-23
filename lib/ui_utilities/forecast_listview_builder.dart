import 'package:flutter/material.dart';


class ForecastListviewBuilder extends StatelessWidget {
  final itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;

  ForecastListviewBuilder({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
