import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';


void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
          useInheritedMediaQuery: true,
          home: Validation(),
          debugShowCheckedModeBanner: false)));
}

class Validation extends StatefulWidget {
  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/image/bgh.png"),
                fit: BoxFit.fill)),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "Assets/icon/icon.png",
                width: 150,
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: TextStyle(color: Color(0xFFA020F0)),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white12,
                      prefixIcon: Icon(Icons.account_circle),
                      prefixIconColor: Colors.white,
                      hintText: "Enter User Name",
                      hintStyle: TextStyle(color: Colors.black),
                      labelText: "User Name",
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (uname) {
                    if (uname!.isEmpty ||
                        !uname.contains('@') ||
                        !uname.contains('.')) {
                      return 'Enter a valid username';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: TextStyle(color: Color(0xFFA020F0)),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white12,
                      hintText: "Enter Your Mobile Number",
                      hintStyle: TextStyle(color: Colors.black),
                      labelText: "Your Mobile Number",
                      labelStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.phone),
                      prefixIconColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (pnumber) {
                    if (pnumber!.isEmpty || pnumber.length < 10) {
                      return 'Enter a Valid Phone Number';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: TextStyle(color: Color(0xFFA020F0)),
                  obscureText: showpass,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white12,
                      hintText: "Enter Your Password",
                      hintStyle: TextStyle(color: Colors.black),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black),
                      helperText: 'Minimum contains 8 charector',
                      prefixIcon: Icon(Icons.key),
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.white,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 8) {
                      return 'Enter a valid password';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFA020F0),
                    ),
                    child: Text("Sign Up",style: TextStyle(color: Colors.white),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}