import 'package:flutter/material.dart';

class AppConstants {
  static const header = TextStyle(fontSize: 45, fontWeight: FontWeight.w500);

  static const title = TextStyle(fontSize: 24, fontWeight: FontWeight.w500);

  static const label = TextStyle(fontSize: 16, fontWeight: FontWeight.w400);

  static const small = TextStyle(fontSize: 12, fontWeight: FontWeight.w400);

  static void navigateWithSlideTransition(BuildContext context, Widget page) =>
      Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.ease;
            final tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        ),
      );
}
