import 'dart:html';

import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';
import 'package:login_page/signup.dart';

import 'LoginPage.dart';


void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        home: WelcomeScreen(),
        debugShowCheckedModeBanner: false,
      )));
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Assets/image/bgh.png"),
                  fit: BoxFit.fill)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 20),
                  child: Image.asset("Assets/icon/icon.png",
                      height: 150, width: 150),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    "Hi There!!",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    "To Keep connected with us, Please select optain",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                      style:ElevatedButton.styleFrom(
                        primary: Color(0xFFA020F0),
                      ),
                      child: Text(" Log In ")),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Validation()));
                  },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFA020F0),
                      ),
                      child: Text("Sign Up")),
                ),
              ],
            ),
          ),
        ));
  }
}