

class ForecastCondition {
  final String text;
  final String icon;

  ForecastCondition({
required this.text,
required this.icon,
  });

    factory ForecastCondition.fromJson(Map<String, dynamic> json) {
    return ForecastCondition(
      text: json['text'],
      icon: json['icon'],
      
    );
  }

  Map<String, dynamic> toJson() => {
        'text': text,
        'icon' : icon,
      };
}
