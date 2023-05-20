import 'package:flutter/material.dart';
import 'package:trip_app_ui/ui/pages/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Montserrat',
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
      ),
      home: const HomePage(),
    );
  }
}
