import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

import '../../../../data/models/resort/resort.dart';
import '../../../common/circle_image.dart';
import '../../../constants.dart';
import '../../resort/resort_page.dart';
import 'resort_card_stat.dart';

class ResortCard extends StatelessWidget {
  const ResortCard({
    super.key,
    required this.resort,
  });

  final Resort resort;

  void onTap(BuildContext context) => AppConstants.navigateWithSlideTransition(
        context,
        ResortPage(
          resort: resort,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => onTap(context),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CachedNetworkImage(
                  imageUrl: resort.image,
                  imageBuilder: (context, imageProvider) => Container(
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18),
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
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18),
                        ),
                      ),
                    ),
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18),
                        ),
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => Skeleton(
                    isLoading: true,
                    skeleton: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18),
                        ),
                      ),
                    ),
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18),
                        ),
                      ),
                    ),
                  ),
                ),
                CircleImage(
                  image: resort.country.image,
                  backgroundCircleRadius: 13,
                  foregroundCircleRadius: 12.5,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              resort.title,
              textAlign: TextAlign.center,
              style: AppConstants.title,
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResortCardStat(
                    icon: const Icon(
                      Icons.hotel,
                    ),
                    label: 'hotels',
                    count: resort.hotels.length,
                  ),
                  ResortCardStat(
                    icon: const Icon(
                      Icons.tour,
                    ),
                    label: 'tours',
                    count: resort.tours.length,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
