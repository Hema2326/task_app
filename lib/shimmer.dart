import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:task_app/walkthrough.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Animationspage(),
    );
  }
}

class Animationspage extends StatefulWidget {
  @override
  _AnimationsPageWidget createState() => _AnimationsPageWidget();
}

class _AnimationsPageWidget extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Shimmer Effect'),
      ),
      body: Column(
        children: [
          Shimmer(
            duration: Duration(seconds: 3), //Default value
            interval:
                Duration(seconds: 5), //Default value: Duration(seconds: 0)
            color: Colors.white, //Default value
            enabled: true, //Default value
            direction: ShimmerDirection.fromLTRB(), //Default Value
            child: Container(
              height: 50.0,
              width: 300.0,
              color: Colors.deepPurple,
            ),
          ),
          Shimmer(
              duration: Duration(seconds: 5),
              interval: Duration(seconds: 6),
              color: Colors.white,
              enabled: true,
              direction: ShimmerDirection.fromRTLB(),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  color: Colors.blue,
                  child: Text(
                    'slide down',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )),
          // ignore: deprecated_member_use
          RaisedButton(
              color: Colors.blue,
              child: Text(' Walkthrough view'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WalkthroughView()));
              }),
        ],
      ),
    );
  }
}
