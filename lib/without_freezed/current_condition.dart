class CurrentCondition {
  final String text;
  final String icon;

  CurrentCondition({
    required this.text,
    required this.icon,
  });

  factory CurrentCondition.fromJson(Map<String, dynamic> json) {
    return CurrentCondition(
      text: json['text'],
      icon: json['icon'],
    );
  }

  Map<String, dynamic> toJson() => {
        'text': text,
        'icon': icon,
      };
}
