import 'package:flutter/material.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                child: Image.asset(
                  "Assets/icon/icon.png",
                  height: 150,
                  width: 150,
                  alignment: Alignment.topCenter,
                ),
              ),
              const Text(
                "WELCOME BUDDY",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}