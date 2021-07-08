import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: unused_import
import 'package:task_app/models/postapimodel/userpost.dart';
import 'package:task_app/screens/postapi/bloc/postuser_bloc.dart';
import 'package:task_app/screens/tabbar.dart';
// ignore: unused_import
import 'package:task_app/screens/tabtospeak.dart';

class PostUserScreen extends StatefulWidget {
  @override
  _PostUserScreenState createState() => _PostUserScreenState();
}

class _PostUserScreenState extends State<PostUserScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _jobController = TextEditingController();
  PostuserBloc postuserBloc;
  @override
  void initState() {
    postuserBloc = PostuserBloc()..add(PostuserIntialEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post API'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              icon: Icon(Icons.forward),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => tabbar()));
              }),
        ],
      ),
      body: BlocListener<PostuserBloc, PostuserState>(
          listener: (context, state) {},
          bloc: postuserBloc,
          child: BlocBuilder<PostuserBloc, PostuserState>(
              bloc: postuserBloc,
              builder: (context, state) {
                if (state is PostuserFailureState) {
                  return Text("error");
                } else if (state is PostuserLoadedState) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text("id:"),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(postuserBloc.userpost.id),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text("name:"),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(postuserBloc.userpost.name),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text("Job:"),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(postuserBloc.userpost.job),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else if (state is PostuserLoadingState) {
                  Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is PostuserInitial) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Name",
                              ),
                              controller: _nameController,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(hintText: "Job"),
                                controller: _jobController,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: ElevatedButton(
                            onPressed: () {
                              String name = _nameController.text;
                              String job = _jobController.text;
                              postuserBloc.add(PostUserSubmitEvent(name, job));
                            },
                            child: Text('Submit'),
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return Container();
              })),
    );
  }
}
