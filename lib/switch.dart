import 'package:flutter/material.dart';
import 'package:task_app/qa%20radio.dart';

void main() {
  runApp(MaterialApp(
    home: switchbox(),
  ));
}

// ignore: camel_case_types
class switchbox extends StatefulWidget {
  @override
  _switchboxState createState() => _switchboxState();
}

// ignore: camel_case_types
class _switchboxState extends State<switchbox> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Center(
        child: Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => radioPage()));
            });
          },
          activeTrackColor: Colors.lightGreenAccent,
          activeColor: Colors.green,
        ),
      ),
    );
  }
}
