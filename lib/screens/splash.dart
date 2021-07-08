import 'dart:async';

import 'package:flutter/material.dart';

import 'package:task_app/screens/biometric.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: Image(
                  image: AssetImage('images/logo_splash.png'),
                  width: 151.0,
                  height: 70.0,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 67.0, horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Image(
                    image: AssetImage('images/verified_by_visa.png'),
                    width: 79.5,
                    height: 30.0,
                  ),
                ),
                // ignore: missing_required_param
                Container(
                  child: Image(
                    image: AssetImage('images/globalsign_secure.png'),
                    width: 75.0,
                    height: 30.0,
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('images/panacea_pci.png'),
                    width: 56.3,
                    height: 30.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
