class LocationName {
  final String name;

  LocationName({
    required this.name,
  });

  factory LocationName.fromJson(Map<String, dynamic> json) {
    return LocationName(
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
      };
}
