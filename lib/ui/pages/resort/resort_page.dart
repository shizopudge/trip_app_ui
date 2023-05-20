import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../data/fake_data.dart';
import '../../../data/models/hotel/hotel.dart';
import '../../../data/models/resort/resort.dart';
import '../../common/circle_image.dart';
import '../../constants.dart';
import 'widgets/choose_dates_button.dart';
import 'widgets/hotel_card.dart';
import 'widgets/resort_app_bar.dart';
import 'widgets/rounded_border_button.dart';

class ResortPage extends StatelessWidget {
  final Resort resort;
  const ResortPage({
    super.key,
    required this.resort,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12,
              ),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(8.0),
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12,
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Icon(
                Icons.favorite_outline_rounded,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ResortAppbar(
              resort: resort,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
              child: Column(
                children: [
                  Text(
                    resort.title,
                    style: AppConstants.header,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleImage(
                        image: resort.country.image,
                        backgroundCircleRadius: 13,
                        foregroundCircleRadius: 12.5,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        resort.country.name,
                        style: AppConstants.label,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ChooseDatesButton(),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            RoundedBorderButton(
                              label:
                                  DateFormat.MMMMEEEEd().format(DateTime.now()),
                              content: '21°',
                              icon: const Icon(
                                Icons.cloud,
                                size: 50,
                              ),
                            ),
                            const RoundedBorderButton(
                              label: 'Price from',
                              content: '\$745',
                              icon: SizedBox(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Hotel offers',
                    style: AppConstants.label.copyWith(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.grey.shade500,
                    size: 16,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 275,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: FakeData.hotels.length,
                itemBuilder: (context, index) {
                  final Hotel hotel = FakeData.hotels[index];
                  return HotelCard(hotel: hotel);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
