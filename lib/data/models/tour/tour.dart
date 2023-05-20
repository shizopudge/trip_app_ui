import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour.freezed.dart';

part 'tour.g.dart';

@freezed
class Tour with _$Tour {
  const factory Tour({
    required String id,
    required String title,
    required String image,
    required double price,
  }) = _Tour;

  factory Tour.fromJson(Map<String, dynamic> json) => _$TourFromJson(json);
}
