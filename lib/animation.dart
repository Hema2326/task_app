import 'package:flutter/material.dart';
import 'package:task_app/exchange.dart';
import 'package:task_app/lottie.dart';
import 'package:task_app/sharedpreference.dart';
import 'package:task_app/youtubeplayer.dart';
import 'shimmer.dart';
import 'hero.dart';
import 'pull.dart';
import 'localization.dart';
//import 'package:shimmer_animation/shimmer_animation.dart';

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
      home: Animationpage(),
    );
  }
}

class Animationpage extends StatefulWidget {
  @override
  _AnimationPageWidget createState() => _AnimationPageWidget();
}

class _AnimationPageWidget extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Animation Page'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AnimatedContainer(
                    width: 180.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    duration: Duration(seconds: 30),
                    curve: Curves.fastOutSlowIn,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Animationspage()));
                        },
                        child: Center(
                          child: Text(
                            'Shimmer',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                AnimatedContainer(
                  width: 180.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  duration: Duration(seconds: 30),
                  curve: Curves.fastOutSlowIn,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FirstScreen()));
                      },
                      child: Text(
                        'Hero',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  AnimatedContainer(
                    width: 400.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    duration: Duration(seconds: 30),
                    curve: Curves.fastOutSlowIn,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LottiePage()));
                      },
                      child: Center(
                        child: Text(
                          'Lottie View',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AnimatedContainer(
                    width: 180.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    duration: Duration(seconds: 30),
                    curve: Curves.fastOutSlowIn,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SharedPrefPage()));
                        },
                        child: Text(
                          'Shared Preference',
                        ),
                      ),
                    ),
                  ),
                ),
                AnimatedContainer(
                  width: 180.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  duration: Duration(seconds: 30),
                  curve: Curves.fastOutSlowIn,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomesPage()));
                      },
                      child: Text(
                        'Pull Refresh',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AnimatedContainer(
                    width: 180.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    duration: Duration(seconds: 30),
                    curve: Curves.fastOutSlowIn,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Exchange()));
                        },
                        child: Text('Exchange'),
                      ),
                    ),
                  ),
                ),
                AnimatedContainer(
                  width: 180.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  duration: Duration(seconds: 30),
                  curve: Curves.fastOutSlowIn,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LangPage()));
                      },
                      child: Text(
                        'localization',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  AnimatedContainer(
                    width: 400.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    duration: Duration(seconds: 30),
                    curve: Curves.fastOutSlowIn,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => YoutubePlayers()));
                      },
                      child: Center(
                        child: Text(
                          'Youtube Player',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
