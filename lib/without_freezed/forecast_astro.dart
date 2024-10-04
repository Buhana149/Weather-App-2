class ForecastAstro {
  final String sunrise;
  final String sunset;

  ForecastAstro({
    required this.sunrise,
    required this.sunset,
  });

  factory ForecastAstro.fromJson(Map<String, dynamic> json) {
    return ForecastAstro(
      sunrise: json['sunrise'],
      sunset: json['sunset'],
    );
  }

  Map<String, dynamic> toJson() => {
        'sunrise': sunrise,
        'sunset': sunset,
      };
}
