import 'package:elevator_flings/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elevator Flings',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home:const SplashScreen()
    );
  }
}

