import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: unused_import
import 'package:task_app/models/randommodels/results.dart';
import 'package:task_app/screens/randomuser/bloc/randomuser_bloc.dart';

class RandomUserScrren extends StatefulWidget {
  @override
  _RandomUserScrrenState createState() => _RandomUserScrrenState();
}

class _RandomUserScrrenState extends State<RandomUserScrren> {
  RandomuserBloc randomuserBloc;
  @override
  void initState() {
    randomuserBloc = RandomuserBloc()..add(RandomuserIntialEvent());

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Randomuser'),
        ),
        body: BlocListener<RandomuserBloc, RandomuserState>(
            listener: (context, state) {},
            bloc: randomuserBloc,
            child: BlocBuilder<RandomuserBloc, RandomuserState>(
                bloc: randomuserBloc,
                builder: (context, state) {
                  if (state is RandomuserLoadingState) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state is RandomuserFailureState) {
                    return Center(
                      child: Text("error"),
                    );
                  } else if (state is RandomuserLoadedState) {
                    return SafeArea(
                      child: ListView.builder(
                        itemCount: randomuserBloc.randomlist.length,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Gender',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: Text(randomuserBloc
                                                .randomlist[index].gender)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Container(
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      child: Row(children: [
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Name:",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Text(randomuserBloc
                                              .randomlist[index].name.title),
                                        ),
                                      ]),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                'Firstname:',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Text(randomuserBloc
                                                .randomlist[index].name.first),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Location",
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 2,
                                              child: Text(randomuserBloc
                                                  .randomlist[index]
                                                  .location
                                                  .city)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      child: Row(children: [
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Street:',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: Text(randomuserBloc
                                                .randomlist[index]
                                                .location
                                                .street
                                                .name)),
                                      ]),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                'E-mail:',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 2,
                                              child: Text(
                                                randomuserBloc
                                                    .randomlist[index].email,
                                                textAlign: TextAlign.justify,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Login Id:",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 2,
                                              child: Text(randomuserBloc
                                                  .randomlist[index]
                                                  .login
                                                  .username)),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ));
                        },
                      ),
                    );
                  } else {
                    return Container();
                  }
                })));
  }
}
