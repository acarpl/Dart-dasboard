import 'package:flutter/material.dart';
import 'package:posyanduku/Pages/splash_screen.dart';
import 'package:posyanduku/pages/dasboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 5)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          } else {
            // Replace with the actual next screen after splash screen
            return DasboardPages();
          }
        },
      ),
    );
  }
}
