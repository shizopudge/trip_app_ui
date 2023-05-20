import 'package:freezed_annotation/freezed_annotation.dart';

import '../country/country.dart';
import '../hotel/hotel.dart';
import '../landscape/landscape.dart';
import '../tour/tour.dart';
import '../trip_type/trip_type.dart';

part 'resort.freezed.dart';

part 'resort.g.dart';

@freezed
class Resort with _$Resort {
  const factory Resort({
    required String id,
    required String title,
    required String image,
    required TripType tripType,
    required Landscape landscape,
    required List<Hotel> hotels,
    required List<Tour> tours,
    required Country country,
  }) = _Resort;

  factory Resort.fromJson(Map<String, dynamic> json) => _$ResortFromJson(json);
}
