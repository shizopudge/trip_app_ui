import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/resort/resort.dart';

class ResortAppbar extends StatelessWidget {
  const ResortAppbar({
    super.key,
    required this.resort,
  });

  final Resort resort;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: CachedNetworkImage(
        imageUrl: resort.image,
        imageBuilder: (context, imageProvider) {
          return Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
          );
        },
      ),
    );
  }
}
