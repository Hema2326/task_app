import 'package:flutter/material.dart';
import 'package:task_app/screens/lottie.dart';
import 'package:task_app/screens/screenspages.dart';
import 'package:task_app/screens/sharedpreference.dart';

import 'package:task_app/screens/tabtospeak.dart';
import 'package:task_app/screens/youtubeplayer.dart';

import 'shimmer.dart';
import 'hero.dart';
import 'pull.dart';
import 'localization.dart';

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
          actions: [
            IconButton(
                icon: Icon(Icons.forward),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenPages()));
                }),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10.0, left: 30, right: 20),
                    child: Row(
                      children: [
                        AnimatedContainer(
                          width: 150.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
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
                                        builder: (context) =>
                                            Animationspage()));
                              },
                              child: Center(
                                child: Text(
                                  'Shimmer',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: AnimatedContainer(
                            width: 150.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
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
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AnimatedContainer(
                    width: 300.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30, right: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: AnimatedContainer(
                          width: 150.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
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
                                        builder: (context) =>
                                            SharedPrefPage()));
                              },
                              child: Text(
                                'Shared Preference',
                              ),
                            ),
                          ),
                        ),
                      ),
                      AnimatedContainer(
                        width: 150.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30, right: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: AnimatedContainer(
                          width: 150.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
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
                                        builder: (context) => TabtoSpeak()));
                              },
                              child: Text('Tab to Speak'),
                            ),
                          ),
                        ),
                      ),
                      AnimatedContainer(
                        width: 150.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
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
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AnimatedContainer(
                    width: 300.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
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
                ),
              ],
            ),
          ),
        ));
  }
}
