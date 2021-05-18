import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get_it/get_it.dart';

class CallsAndMessagesService {
  void call(String number) => launch("tel:$number");
  void sendSms(String number) => launch("sms:$number");
  void sendEmail(String email) => launch("mailto:$email");
}

GetIt locator = GetIt();

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email-Call'),
        backgroundColor: Colors.blue,
      ),
      body: new Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(30.0),
                        // ignore: deprecated_member_use
                        child: FlatButton.icon(
                          icon: Icon(Icons.add_to_home_screen),
                          label: Text(
                            "Open Website",
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () => launch("http://google.com"),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Card(
                shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      // ignore: deprecated_member_use
                      child: FlatButton.icon(
                        icon: Icon(Icons.call),
                        label: Text(
                          "Make a Call",
                          style: TextStyle(fontSize: 25),
                        ),
                        onPressed: () => launch("tel://123"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Card(
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      // ignore: deprecated_member_use
                      child: FlatButton.icon(
                        icon: Icon(Icons.email),
                        label: Text("Send a Email",
                            style: TextStyle(fontSize: 25)),
                        onPressed: () => launch(
                            "mailto:abhi@androidcoding.in?subject=Hi&body=How are you%20plugin"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Card(
                shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      // ignore: deprecated_member_use
                      child: FlatButton.icon(
                        icon: Icon(Icons.sms),
                        label:
                            Text("Write a SMS", style: TextStyle(fontSize: 25)),
                        onPressed: () => launch("sms:123456789"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
