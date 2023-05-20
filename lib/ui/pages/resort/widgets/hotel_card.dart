import 'package:flutter/material.dart';

import '../../../../data/models/hotel/hotel.dart';
import 'hotel_image.dart';
import 'hotel_stats.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    super.key,
    required this.hotel,
  });

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        children: [
          HotelImage(hotel: hotel),
          const SizedBox(
            height: 8.0,
          ),
          HotelStats(hotel: hotel),
        ],
      ),
    );
  }
}
