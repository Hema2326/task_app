import 'package:flutter/material.dart';
import 'package:task_app/catfactscreen/cat_fact_screen.dart';
import 'package:task_app/screens/imagepicker.dart';

import 'package:task_app/screens/postapi/postuser_screen.dart';
import 'package:task_app/screens/randomuser/random_user_screen.dart';
import 'package:task_app/screens/socialshares.dart';
import 'package:task_app/screens/exchangeui.dart';
import 'package:task_app/screens/walkthrough.dart';

import 'bottomsheet.dart';
import 'emailcall.dart';

class ScreenPages extends StatefulWidget {
  @override
  _ScreenPagesState createState() => _ScreenPagesState();
}

class _ScreenPagesState extends State<ScreenPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screens'),
          actions: [
            IconButton(
                icon: Icon(Icons.forward),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomSheets()));
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
                                            WalkthroughView()));
                              },
                              child: Center(
                                child: Text(
                                  'Walkthhrough view',
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
                                          builder: (context) => Calls()));
                                },
                                child: Text(
                                  'Calls and Email',
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
                                builder: (context) => PostUserScreen()));
                      },
                      child: Center(
                        child: Text(
                          'Post User Screen ',
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
                                        builder: (context) => ImagePage()));
                              },
                              child: Text(
                                'Image API',
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
                                      builder: (context) => Socialshares()));
                            },
                            child: Text(
                              'Social Shares',
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
                                        builder: (context) => Exchangeui()));
                              },
                              child: Text('Exchange'),
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
                                      builder: (context) =>
                                          RandomUserScrren()));
                            },
                            child: Text(
                              'Randomuser API',
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
                                builder: (context) => CatFactScreen()));
                      },
                      child: Center(
                        child: Text(
                          'CatFact Screen',
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
