import 'package:flutter/material.dart';

import '../../../../data/models/hotel/hotel.dart';
import '../../../constants.dart';

class HotelStats extends StatelessWidget {
  const HotelStats({
    super.key,
    required this.hotel,
  });

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12,
              ),
              color: Colors.green.shade300),
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(
                Icons.star_rate_rounded,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                hotel.rating.toString(),
                style: AppConstants.small.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            ...List.generate(5, (index) {
              if (index + 1 <= hotel.rating.round()) {
                return const Icon(
                  Icons.star,
                );
              } else {
                return const Icon(
                  Icons.star_border,
                );
              }
            }),
          ],
        ),
      ],
    );
  }
}
