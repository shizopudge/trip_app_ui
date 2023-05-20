import 'package:flutter/material.dart';

import '../../../../data/fake_data.dart';
import '../../../common/appbar.dart';
import '../../../common/circle_image.dart';
import '../../../constants.dart';
import '../trip_page.dart';
import 'landscape_type_listview.dart';

class ExpandedTripAppbar extends StatelessWidget {
  const ExpandedTripAppbar({
    super.key,
    required this.widget,
    required ValueNotifier<int> selectedIndexNotifier,
  }) : _selectedIndexNotifier = selectedIndexNotifier;

  final TripPage widget;
  final ValueNotifier<int> _selectedIndexNotifier;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 15.0).copyWith(bottom: 15.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(
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
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 15.0),
                  child: Text(
                    widget.tripType.title,
                    style: AppConstants.header,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            LandscapeTypeListview(
              landscapes: FakeData.landscapes,
              selectedIndexNotifier: _selectedIndexNotifier,
            ),
          ],
        ),
      ),
    );
  }
}
