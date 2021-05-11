import 'package:flutter/material.dart';
import 'package:task_app/switch.dart';

class Alertbox extends StatefulWidget {
  @override
  _AlertboxState createState() => _AlertboxState();
}

class _AlertboxState extends State<Alertbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AlertBox'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            child: Text('Show alert'),
            onPressed: () {
              showAlertDialog(context);
            },
          ),
        ));
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => switchbox()));
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Simple Alert"),
    content: Text("This is an alert message."),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
