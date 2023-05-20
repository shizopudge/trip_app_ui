import 'package:freezed_annotation/freezed_annotation.dart';

part 'landscape.freezed.dart';

part 'landscape.g.dart';

@freezed
class Landscape with _$Landscape {
  const factory Landscape({
    required String name,
    required String icon,
  }) = _Landscape;

  factory Landscape.fromJson(Map<String, dynamic> json) =>
      _$LandscapeFromJson(json);
}
