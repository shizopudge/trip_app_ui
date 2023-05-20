import 'package:flutter/material.dart';

import '../../../common/appbar.dart';
import '../../../common/circle_image.dart';

class CollapsedTripAppbar extends StatelessWidget {
  const CollapsedTripAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: CustomAppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          action: IconButton(
            onPressed: () {},
            icon: const CircleImage(
              image: 'https://dota2.ru/img/heroes/pudge/portrait.jpg',
              backgroundCircleRadius: 24.5,
              foregroundCircleRadius: 24,
            ),
          ),
        ),
      ),
    );
  }
}
