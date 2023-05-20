import 'package:flutter/material.dart';

import '../../../../data/models/trip_type/trip_type.dart';
import '../../../constants.dart';
import '../../../common/circle_image.dart';

class TripTypeCard extends StatelessWidget {
  final TripType tripType;
  final int index;
  final ValueNotifier<int> selectedIndexNotifier;
  final VoidCallback onTap;
  const TripTypeCard({
    super.key,
    required this.tripType,
    required this.selectedIndexNotifier,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndexNotifier,
      builder: (context, selectedIndex, _) => AnimatedContainer(
        width: 200,
        duration: const Duration(milliseconds: 250),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: selectedIndex == index ? Colors.white : Colors.black45,
        ),
        margin: selectedIndex == index
            ? const EdgeInsets.all(15.0)
            : const EdgeInsets.all(15.0).copyWith(top: 50.0),
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
        child: InkWell(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                tripType.title,
                style: selectedIndex == index
                    ? AppConstants.title
                    : AppConstants.title.copyWith(
                        color: Colors.white,
                      ),
              ),
              if (selectedIndex == index)
                const Icon(
                  Icons.arrow_downward_rounded,
                  size: 32,
                ),
              SizedBox(
                height: 50,
                width: double.maxFinite,
                child: Stack(
                  children: List.generate(
                    4,
                    (index) {
                      if (index <= 2) {
                        return Positioned(
                          left: index * 21,
                          child: CircleImage(
                            image: tripType.countries[index].image,
                            backgroundCircleRadius: 13,
                            foregroundCircleRadius: 12,
                          ),
                        );
                      } else {
                        return Positioned(
                          left: index * 21,
                          child: CountriesLength(
                            countriesLength: tripType.countries.length,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CountriesLength extends StatelessWidget {
  final int countriesLength;
  const CountriesLength({
    super.key,
    required this.countriesLength,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          32,
        ),
        color: Colors.black,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 6.0),
      child: Text(
        '$countriesLength+',
        style: AppConstants.small.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
