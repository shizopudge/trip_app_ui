import 'package:freezed_annotation/freezed_annotation.dart';

import '../review/review.dart';

part 'hotel.freezed.dart';

part 'hotel.g.dart';

@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    required String id,
    required String title,
    required List<String> images,
    required double rating,
    required List<Review> reviews,
    required double price,
  }) = _Hotel;

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}
