import 'dart:ui';

import 'package:flutter/material.dart';

class Exchange extends StatefulWidget {
  @override
  _ExchangeState createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1c1d22),
          title: Text('Exchange'),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Stack(
              // ignore: deprecated_member_use

              alignment: Alignment.center,
              children: [
                Container(
                  // height: 329.0,
                  // width: 375.0,
                  child: Image(image: AssetImage('images/bg.png')),
                ),
                Container(
                  width: 335.0,
                  height: 95.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                Text('USD',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins-Light',
                    )),
                // DropdownButton(value: 'Dollar', items: [
                //   DropdownMenuItem(
                //     child: Text('euro'),
                //    )
              ]),
        ])));
  }
}
