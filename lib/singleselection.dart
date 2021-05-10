import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:task_app/multiselection.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Localizations Sample App',
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   const Locale('en', ''), // English, no country code
      //   const Locale('er', ''), // Arabic, no country code
      // ],
      home: DropDown(),
    );
  }
}

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
        backgroundColor: Colors.pink,
        title: Text('Single Selection Page'),
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
                color: Colors.pink,
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
            color: Colors.green,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
              child: Text('Click Here To Multi Selection page'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MultiSelection()));
              }),
        ]),
      ),
    );
  }
}
