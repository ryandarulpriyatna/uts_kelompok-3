import 'dart:async';

import 'package:flutter/material.dart';
import './login.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Image.asset(
              "images/logo_sttb.png",
              width: 200.0,
              height: 200.0,
            ),
            SizedBox(
              height: 24.0,
            ),
            Text("OSCAR APPS",
                style: TextStyle(
                  color: Colors.green[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ))
          ],
        ),
      ),
    );
  }
}
