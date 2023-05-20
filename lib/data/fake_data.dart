import 'package:trip_app_ui/data/models/review/review.dart';
import 'package:trip_app_ui/data/models/tour/tour.dart';

import 'models/country/country.dart';
import 'models/hotel/hotel.dart';
import 'models/landscape/landscape.dart';
import 'models/resort/resort.dart';
import 'models/trip_type/trip_type.dart';

class FakeData {
  static const countries = [
    Country(
      name: 'Russia',
      image:
          'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_rf_enl.jpg',
    ),
    Country(
      name: 'England',
      image:
          'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_england1.jpg',
    ),
    Country(
      name: 'Australia',
      image:
          'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_avstraliya_enl.jpg',
    ),
    Country(
      name: 'Japan',
      image:
          'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
    ),
  ];
  static final tours = [
    const Tour(
      id: 'asgasgasg-125125-asgasg',
      title: 'Henderson',
      image:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/290950758.jpg?k=3a65a7ab7378928f80e5c176d3f26190da8beabac466a7052f2d8702c1684b94&o=&hp=1',
      price: 1240.99,
    ),
    const Tour(
      id: 'asgasgasg-125125-asgasg',
      title: 'Henderson',
      image:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/290950758.jpg?k=3a65a7ab7378928f80e5c176d3f26190da8beabac466a7052f2d8702c1684b94&o=&hp=1',
      price: 1240.99,
    ),
    const Tour(
      id: 'asgasgasg-125125-asgasg',
      title: 'Henderson',
      image:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/290950758.jpg?k=3a65a7ab7378928f80e5c176d3f26190da8beabac466a7052f2d8702c1684b94&o=&hp=1',
      price: 1240.99,
    ),
  ];
  static const tripTypes = [
    TripType(
      title: 'Quite place',
      countries: [
        Country(
          name: 'Russia',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_rf_enl.jpg',
        ),
        Country(
          name: 'England',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_england1.jpg',
        ),
        Country(
          name: 'Australia',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_avstraliya_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
      ],
    ),
    TripType(
      title: 'Romantic Trip',
      countries: [
        Country(
          name: 'Iceland',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_islandija_new.jpg',
        ),
        Country(
          name: 'Finland',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_finljandija_new_0.jpg',
        ),
        Country(
          name: 'New Zeland',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_new_zeland_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
      ],
    ),
    TripType(
      title: 'Active',
      countries: [
        Country(
          name: 'Brazil',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_brazilija_enl.jpg',
        ),
        Country(
          name: 'Haiti',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_gaiti_new.jpg',
        ),
        Country(
          name: 'New Zeland',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_new_zeland_enl.jpg',
        ),
        Country(
          name: 'Spain',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_ispanija_new.jpg',
        ),
        Country(
          name: 'Philippines',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_filippiny_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
      ],
    ),
    TripType(
      title: 'Beach & Relaxation',
      countries: [
        Country(
          name: 'Turkey',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_turtsija_enl.jpg',
        ),
        Country(
          name: 'England',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_england1.jpg',
        ),
        Country(
          name: 'Australia',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_avstraliya_enl.jpg',
        ),
        Country(
          name: 'Spain',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_ispanija_new.jpg',
        ),
        Country(
          name: 'Philippines',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_filippiny_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Australia',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_avstraliya_enl.jpg',
        ),
        Country(
          name: 'Spain',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_ispanija_new.jpg',
        ),
        Country(
          name: 'Philippines',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_filippiny_enl.jpg',
        ),
      ],
    ),
    TripType(
      title: 'Culture & History',
      countries: [
        Country(
          name: 'Brazil',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_brazilija_enl.jpg',
        ),
        Country(
          name: 'Turkey',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_turtsija_enl.jpg',
        ),
        Country(
          name: 'Australia',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_avstraliya_enl.jpg',
        ),
        Country(
          name: 'Haiti',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_gaiti_new.jpg',
        ),
        Country(
          name: 'New Zeland',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_new_zeland_enl.jpg',
        ),
        Country(
          name: 'Spain',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_ispanija_new.jpg',
        ),
        Country(
          name: 'Philippines',
          image:
              'https://www.megaflag.ru/sites/default/files/images/directory_names/flag_filippiny_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
        Country(
          name: 'Japan',
          image:
              'https://www.megaflag.ru/sites/default/files/images/shop/products/flag_japonija_enl.jpg',
        ),
      ],
    ),
  ];
  static const landscapes = [
    Landscape(
      name: 'All',
      icon: 'assets/icons/all.png',
    ),
    Landscape(
      name: 'Mounstains',
      icon: 'assets/icons/mountain.png',
    ),
    Landscape(
      name: 'Forest',
      icon: 'assets/icons/forest.png',
    ),
    Landscape(
      name: 'Ocean',
      icon: 'assets/icons/wave.png',
    ),
  ];
  static const reviews = [
    Review(
      id: 'abaqqqwasgasg-124125',
      hotelId: 'abaqqqw-124125',
      authorId: 'abaqqqasgasgasgw--12512asgas-124125',
      title: 'The name Grand Majestic did not deceive!',
      content:
          'The hotel is large and rather hectic, during check-in hours at the reception you can even see a decent queue. If you arrived earlier than 15-00 and there is no way to get a room, then feel free to leave your luggage, get a paper number for it and go for a walk. In the elevator you need to use your room key card, the door to the stairs is also electronically locked. The room has a kettle, cups, tea and coffee set, mini-bar. Free safe in the closet. Breakfast starts at 6-30, everything is fresh and tasty. Tea can be poured into a portioned teapot. Pleasantly surprised by the assortment of fruits for breakfast! Neatly cut and peeled oranges, fresh pineapple, two types of grapefruit, melon. I remember these breakfasts to this day!',
      createdAt: 1684423272000,
    ),
  ];
  static final hotels = [
    Hotel(
      id: 'abaqqqw-124125',
      title: 'Grand Majestic Hotel',
      images: [
        'https://cdn.worldota.net/t/1024x768/content/25/1d/251de039aeac7484e041569949ea42d6e7949d6f.jpeg',
        'https://cdn.worldota.net/t/1024x768/content/22/b1/22b1e65f281c0a2a660dbcdcd3f540797d0e27fd.jpeg',
        'https://cdn.worldota.net/t/1024x768/content/ef/6d/ef6d9f3fe858c31979c8d9229d0335eb26274583.jpeg',
      ],
      rating: 4.7,
      reviews: [
        reviews[0],
        reviews[0],
        reviews[0],
      ],
      price: 950.75,
    ),
    Hotel(
      id: 'abaqqqw-124125',
      title: 'Grand Majestic Hotel',
      images: [
        'https://cdn.worldota.net/t/1024x768/content/25/1d/251de039aeac7484e041569949ea42d6e7949d6f.jpeg',
        'https://cdn.worldota.net/t/1024x768/content/22/b1/22b1e65f281c0a2a660dbcdcd3f540797d0e27fd.jpeg',
        'https://cdn.worldota.net/t/1024x768/content/ef/6d/ef6d9f3fe858c31979c8d9229d0335eb26274583.jpeg',
      ],
      rating: 4.7,
      reviews: [
        reviews[0],
        reviews[0],
        reviews[0],
      ],
      price: 950.75,
    ),
    Hotel(
      id: 'abaqqqw-124125',
      title: 'Grand Majestic Hotel',
      images: [
        'https://cdn.worldota.net/t/1024x768/content/25/1d/251de039aeac7484e041569949ea42d6e7949d6f.jpeg',
        'https://cdn.worldota.net/t/1024x768/content/22/b1/22b1e65f281c0a2a660dbcdcd3f540797d0e27fd.jpeg',
        'https://cdn.worldota.net/t/1024x768/content/ef/6d/ef6d9f3fe858c31979c8d9229d0335eb26274583.jpeg',
      ],
      rating: 2.7,
      reviews: [
        reviews[0],
        reviews[0],
        reviews[0],
      ],
      price: 950.75,
    ),
    Hotel(
      id: 'abaqqqw-124125',
      title: 'Grand Majestic Hotel',
      images: [
        'https://cdn.worldota.net/t/1024x768/content/25/1d/251de039aeac7484e041569949ea42d6e7949d6f.jpeg',
        'https://cdn.worldota.net/t/1024x768/content/22/b1/22b1e65f281c0a2a660dbcdcd3f540797d0e27fd.jpeg',
        'https://cdn.worldota.net/t/1024x768/content/ef/6d/ef6d9f3fe858c31979c8d9229d0335eb26274583.jpeg',
      ],
      rating: 3.7,
      reviews: [
        reviews[0],
        reviews[0],
        reviews[0],
      ],
      price: 950.75,
    ),
  ];
  static final resorts = [
    Resort(
      id: 'abcd-1234-qwerty-3356',
      title: 'Henderson Beach',
      image:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/85115609.jpg?k=b5bc8239f4a08d9d5210e99e7ea125d102fbfb230548326c68fd951cbb144b31&o=&hp=1',
      tripType: tripTypes[1],
      landscape: landscapes[1],
      hotels: hotels,
      tours: tours,
      country: countries[1],
    ),
    Resort(
      id: 'abcd-1234-qwerty-3356',
      title: 'Henderson Beach',
      image:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/85115609.jpg?k=b5bc8239f4a08d9d5210e99e7ea125d102fbfb230548326c68fd951cbb144b31&o=&hp=1',
      tripType: tripTypes[1],
      landscape: landscapes[1],
      hotels: hotels,
      tours: tours,
      country: countries[1],
    ),
    Resort(
      id: 'abcd-1234-qwerty-3356',
      title: 'Henderson Beach',
      image:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/85115609.jpg?k=b5bc8239f4a08d9d5210e99e7ea125d102fbfb230548326c68fd951cbb144b31&o=&hp=1',
      tripType: tripTypes[1],
      landscape: landscapes[1],
      hotels: hotels,
      tours: tours,
      country: countries[1],
    ),
    Resort(
      id: 'abcd-1234-qwerty-3356',
      title: 'Henderson Beach',
      image:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/85115609.jpg?k=b5bc8239f4a08d9d5210e99e7ea125d102fbfb230548326c68fd951cbb144b31&o=&hp=1',
      tripType: tripTypes[1],
      landscape: landscapes[1],
      hotels: hotels,
      tours: tours,
      country: countries[1],
    ),
    Resort(
      id: 'abcd-1234-qwerty-3356',
      title: 'Henderson Beach',
      image:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/85115609.jpg?k=b5bc8239f4a08d9d5210e99e7ea125d102fbfb230548326c68fd951cbb144b31&o=&hp=1',
      tripType: tripTypes[1],
      landscape: landscapes[1],
      hotels: hotels,
      tours: tours,
      country: countries[1],
    ),
    Resort(
      id: 'abcd-1234-qwerty-3356',
      title: 'Henderson Beach',
      image:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/85115609.jpg?k=b5bc8239f4a08d9d5210e99e7ea125d102fbfb230548326c68fd951cbb144b31&o=&hp=1',
      tripType: tripTypes[1],
      landscape: landscapes[1],
      hotels: hotels,
      tours: tours,
      country: countries[1],
    ),
    Resort(
      id: 'abcd-1234-qwerty-3356',
      title: 'Henderson Beach',
      image:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/85115609.jpg?k=b5bc8239f4a08d9d5210e99e7ea125d102fbfb230548326c68fd951cbb144b31&o=&hp=1',
      tripType: tripTypes[1],
      landscape: landscapes[1],
      hotels: hotels,
      tours: tours,
      country: countries[1],
    ),
    Resort(
      id: 'abcd-1234-qwerty-3356',
      title: 'Henderson Beach',
      image:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/85115609.jpg?k=b5bc8239f4a08d9d5210e99e7ea125d102fbfb230548326c68fd951cbb144b31&o=&hp=1',
      tripType: tripTypes[1],
      landscape: landscapes[1],
      hotels: hotels,
      tours: tours,
      country: countries[1],
    ),
  ];
}
