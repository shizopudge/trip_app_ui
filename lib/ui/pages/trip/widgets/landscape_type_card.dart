import 'package:flutter/material.dart';

import '../../../../data/models/landscape/landscape.dart';
import '../../../constants.dart';

class LandscapeTypeCard extends StatelessWidget {
  final Landscape landscape;
  final int index;
  final ValueNotifier<int> selectedIndexNotifier;
  final VoidCallback onTap;
  const LandscapeTypeCard({
    super.key,
    required this.landscape,
    required this.index,
    required this.selectedIndexNotifier,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndexNotifier,
      builder: (context, selectedIndex, _) => AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          border: selectedIndex == index
              ? null
              : Border.all(
                  color: Colors.black,
                ),
          color: selectedIndex == index ? Colors.black : Colors.white,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                landscape.icon,
                colorBlendMode: BlendMode.srcIn,
                color: selectedIndex == index ? Colors.white : Colors.black,
                height: 35,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                landscape.name,
                style: AppConstants.label.copyWith(
                    color: selectedIndex == index ? Colors.white : null),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
