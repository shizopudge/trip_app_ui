import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

import '../../../../data/models/hotel/hotel.dart';

class HotelImage extends StatelessWidget {
  const HotelImage({
    super.key,
    required this.hotel,
  });

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: hotel.images[0],
      imageBuilder: (context, imageProvider) => Container(
        height: 180,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            21,
          ),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => Skeleton(
        isLoading: true,
        skeleton: Container(
          height: 150,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              21,
            ),
            color: Colors.grey.shade100,
          ),
        ),
        child: Container(
          height: 150,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              21,
            ),
            color: Colors.grey.shade100,
          ),
        ),
      ),
      errorWidget: (context, url, error) => Skeleton(
        isLoading: true,
        skeleton: Container(
          height: 150,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              21,
            ),
            color: Colors.grey.shade100,
          ),
        ),
        child: Container(
          height: 150,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              21,
            ),
            color: Colors.grey.shade100,
          ),
        ),
      ),
    );
  }
}
