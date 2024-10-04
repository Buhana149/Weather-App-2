import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_condition.freezed.dart';
part 'current_condition.g.dart';

@freezed
class CurrentCondition with _$CurrentCondition {
  const factory CurrentCondition({
    required String text,
    required String icon,
  }) = _CurrentCondition;

  factory CurrentCondition.fromJson(Map<String, dynamic> json) =>
      _$CurrentConditionFromJson(json);
}
