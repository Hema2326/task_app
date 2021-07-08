import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_app/screens/pull.dart';

void main() => runApp(MyApp());

SharedPreferences localStorage;

TextEditingController emailController = TextEditingController();
TextEditingController pwdController = TextEditingController();

class MyApp extends StatelessWidget {
  static Future init() async {
    localStorage = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sharedpef',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SharedPrefPage(),
    );
  }
}

class SharedPrefPage extends StatefulWidget {
  @override
  _SharedPrefPageWidget createState() => _SharedPrefPageWidget();
}

class _SharedPrefPageWidget extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('SharedPreference Page'),
          actions: [
            IconButton(
                icon: Icon(Icons.forward),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomesPage()));
                }),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 100),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Email Id:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                            controller: emailController,
                            obscureText: false,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                fillColor: Colors.white,
                                filled: true)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30.0, top: 20.0),
                        child: Text(
                          "Password :",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                            controller: pwdController,
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                fillColor: Colors.white,
                                filled: true)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 50),
                  child: Center(
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: save,
                          child: Text('Login'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: clear,
                          child: Text('Signup'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: read,
                          child: Text('readdata'),
                        ),
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                if (localStorage != null)
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, left: 20.0, right: 20.0, bottom: 10.0),
                    child: Container(
                      color: Colors.lightBlue[50],
                      height: 100.0,
                      child: Center(
                        child: Text(
                          "User Logged in!!! ->  Email Id: ${localStorage.get('email')}  Password: ${localStorage.get('password')}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ));
  }

  save() async {
    await MyApp.init();
    localStorage.setString('email', emailController.text.toString());
    localStorage.setString('password', pwdController.text.toString());
  }

  clear() async {
    await MyApp.init();
    localStorage.remove(emailController.text.toString());
    localStorage.remove(pwdController.text.toString());
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }

  read() async {
    await MyApp.init();
    localStorage.get(emailController.text.toString());
    localStorage.get(emailController.text.toString());
  }
}
