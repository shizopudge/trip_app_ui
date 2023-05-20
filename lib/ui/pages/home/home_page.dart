import 'package:flutter/material.dart';

import '../../../data/fake_data.dart';
import '../../common/appbar.dart';
import '../../constants.dart';
import '../../common/circle_image.dart';
import 'widgets/trip_type_listview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/bg.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(
                      action: IconButton(
                        onPressed: () {},
                        icon: const CircleImage(
                          image:
                              'https://dota2.ru/img/heroes/pudge/portrait.jpg',
                          backgroundCircleRadius: 24.5,
                          foregroundCircleRadius: 24,
                        ),
                      ),
                      leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          size: 32,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                      child: Text(
                        'Where do you want to be?',
                        style: AppConstants.header,
                      ),
                    ),
                  ],
                ),
              ),
              const TripTypeListView(
                tripTypes: FakeData.tripTypes,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
