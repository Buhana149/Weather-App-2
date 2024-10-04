import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_name.freezed.dart';
part 'location_name.g.dart';

@freezed
class LocationName with _$LocationName {
  const factory LocationName({
    required String name,
  }) = _LocationName;

  factory LocationName.fromJson(Map<String, dynamic> json) =>
      _$LocationNameFromJson(json);
}
