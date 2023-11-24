import 'package:flutter/material.dart';
import 'package:uts_kelompok3/pages/SplashScreen.dart';
import './pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
