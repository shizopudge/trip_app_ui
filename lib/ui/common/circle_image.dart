import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class CircleImage extends StatelessWidget {
  final String image;
  final double backgroundCircleRadius;
  final double foregroundCircleRadius;
  const CircleImage({
    super.key,
    required this.image,
    required this.backgroundCircleRadius,
    required this.foregroundCircleRadius,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      imageBuilder: (context, imageProvider) => CircleAvatar(
        radius: backgroundCircleRadius,
        backgroundColor: Colors.grey.shade900,
        child: CircleAvatar(
          radius: foregroundCircleRadius,
          backgroundColor: Colors.grey,
          backgroundImage: imageProvider,
        ),
      ),
      placeholder: (context, url) => Skeleton(
        isLoading: true,
        skeleton: SkeletonItem(
          child: CircleAvatar(
            radius: backgroundCircleRadius,
            backgroundColor: Colors.grey.shade900,
            child: CircleAvatar(
              radius: foregroundCircleRadius,
              backgroundColor: Colors.grey,
            ),
          ),
        ),
        child: CircleAvatar(
          radius: backgroundCircleRadius,
          backgroundColor: Colors.grey.shade900,
          child: CircleAvatar(
            radius: foregroundCircleRadius,
            backgroundColor: Colors.grey,
          ),
        ),
      ),
      errorWidget: (context, url, error) => Skeleton(
        isLoading: true,
        skeleton: SkeletonItem(
          child: CircleAvatar(
            radius: backgroundCircleRadius,
            backgroundColor: Colors.grey.shade900,
            child: CircleAvatar(
              radius: foregroundCircleRadius,
              backgroundColor: Colors.grey,
            ),
          ),
        ),
        child: CircleAvatar(
          radius: backgroundCircleRadius,
          backgroundColor: Colors.grey.shade900,
          child: CircleAvatar(
            radius: foregroundCircleRadius,
            backgroundColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
