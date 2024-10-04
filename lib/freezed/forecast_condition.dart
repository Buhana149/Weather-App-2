import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_condition.freezed.dart';
part 'forecast_condition.g.dart';

@freezed
class ForecastCondition with _$ForecastCondition {
  const factory ForecastCondition({
    required String text,
    required String icon,
  }) = _ForecastCondition;

  factory ForecastCondition.fromJson(Map<String, dynamic> json) =>
      _$ForecastConditionFromJson(json);
}
