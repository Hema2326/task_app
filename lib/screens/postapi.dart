import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class UserDeeta extends StatefulWidget {
  @override
  _UserDeetaState createState() => _UserDeetaState();
}

class _UserDeetaState extends State<UserDeeta> {
  void developerlibs() async {
    var dio = Dio();
    Response response =
        await dio.post("/developerlibs", data: {"id": 4, "name": "dev"});
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('post API'),
      ),
      body: ElevatedButton(
          child: Text('clickme'),
          onPressed: () {
            developerlibs();
          }),
    );
  }
}
