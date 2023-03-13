import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'WelcomePage.dart';


void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      )));
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

     Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Assets/image/bgh.png"),
                  fit: BoxFit.fill)),
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                child: Image.asset("Assets/icon/icon.png",
                    height: 250, width: 250),
              ),
            ]),
          ),
        ));
  }
}

