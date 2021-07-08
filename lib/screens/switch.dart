import 'package:flutter/material.dart';
import 'package:task_app/screens/qa%20radio.dart';

class Switchbox extends StatefulWidget {
  @override
  _SwitchboxState createState() => _SwitchboxState();
}

class _SwitchboxState extends State<Switchbox> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Switch'),
          actions: [
            IconButton(
                icon: Icon(Icons.forward),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RadioPage()));
                }),
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Camera',
                    style: TextStyle(
                      fontFamily: "Poppins.Bold",
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Google',
                    style: TextStyle(
                      fontFamily: "Poppins.Bold",
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ),
              ]),
            ),
          ),
        ]));
  }
}
