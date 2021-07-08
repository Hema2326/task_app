import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownWidget createState() => _DropDownWidget();
}

class _DropDownWidget extends State {
  String dropdownValue = "Flutter";
  String holder = "";
  List<String> codeName = [
    'Flutter',
    'IOS',
    'Android',
  ];
  void getDropDownItems() {
    setState(() {
      holder = dropdownValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Single Selection Page'),
        actions: [
          IconButton(icon: Icon(Icons.mic), onPressed: () {}),
        ],
      ),
      body: Center(
        child: Column(children: [
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              dropdownColor: Colors.white,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15.0,
                fontWeight: FontWeight.normal,
              ),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String data) {
                setState(() {
                  dropdownValue = data;
                });
              },
              items: codeName.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: Text('Selected Item = ' + '$holder',
                  style: TextStyle(fontSize: 22, color: Colors.black))),
          // ignore: deprecated_member_use
          RaisedButton(
            child: Text('Click Here To Get Selected Item From Drop Down'),
            onPressed: getDropDownItems,
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          ),
        ]),
      ),
    );
  }
}
