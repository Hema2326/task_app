import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types
class listviewdetail extends StatefulWidget {
  @override
  _listviewdetailState createState() => _listviewdetailState();
}

// ignore: camel_case_types
class _listviewdetailState extends State<listviewdetail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {},
          ),
          backgroundColor: Colors.black,
          title: Text('Recent Transactions'),
        ),
        body: Text('hello'),
      ),
    );
  }
}
