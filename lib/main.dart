import 'package:flutter/material.dart';
import 'package:uber_clone/view/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Uber Clone",
      home: SplashScreen(),
    );
  }
}
