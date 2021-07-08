import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class UserDeta extends StatefulWidget {
  @override
  _UserDetaState createState() => _UserDetaState();
}

class _UserDetaState extends State<UserDeta> {
  void getHttp() async {
    var dio = Dio();
    final response = await dio.get('https://cat-fact.herokuapp.com/facts');

    print('********');
    print(response.data);
    print('**********');
  }

  // Future getUserData() async {
  //   var dio = Dio();
  //   Response response =
  //       await dio.get("http://jsonplaceholder.typicode.com/users");
  //   var jsonData = jsonDecode(response.data);
  //   List<User> users = [];
  //   for (var u in jsonData) {
  //     User user = User(u["name"], u["email"], u["usename"]);
  //     users.add(user);
  //   }
  //   print(users.length);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('get API'),
      ),
      body: ElevatedButton(
          child: Text('clickme'),
          onPressed: () {
            getHttp();
          }),
    );
  }
}
