import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_astro.freezed.dart';
part 'forecast_astro.g.dart';

@freezed
class ForecastAstro with _$ForecastAstro {
  factory ForecastAstro({
    required String sunrise,
    required String sunset,
  }) = _ForecastAstro;

  factory ForecastAstro.fromJson(Map<String, dynamic> json) =>
      _$ForecastAstroFromJson(json);
}
