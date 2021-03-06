import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'alerttbutton.dart';

class Lists extends StatefulWidget {
  @override
  _ListsState createState() => _ListsState();
}

// ignore: camel_case_types
class _ListsState extends State<Lists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
        actions: [
          IconButton(
              icon: Icon(Icons.forward),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Alertbox()));
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 200,
                    color: Colors.purple[600],
                    child: const Center(
                        child: Text(
                      'Item 1',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  Container(
                    width: 200,
                    color: Colors.green[500],
                    child: const Center(
                        child: Text(
                      'Item 2',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  Container(
                    width: 200,
                    color: Colors.purple[500],
                    child: const Center(
                        child: Text(
                      'Item 3',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  Text(
                    'nextpage',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins-Medium',
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                  height: 100.0,
                  width: 200.0,
                  color: Colors.blue,
                  child: Center(child: Text('hello'))),
            ),
            Container(
                height: 100.0,
                width: 200.0,
                color: Colors.green,
                child: Center(child: Text('hello'))),
            Container(
                height: 100.0,
                width: 200.0,
                color: Colors.pink,
                child: Center(child: Text('hifi'))),
            Container(
                height: 100.0,
                width: 200.0,
                color: Colors.orange,
                child: Center(child: Text('morning'))),
            Container(
                height: 100.0,
                width: 200.0,
                color: Colors.red,
                child: Center(child: Text('hai'))),
          ],
        ),
      ),
    );
  }
}
