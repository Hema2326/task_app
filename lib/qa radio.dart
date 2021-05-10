import 'package:flutter/material.dart';
import 'package:task_app/bottomsheet.dart';
import 'package:task_app/list.dart';
// ignore: unused_import
import 'package:task_app/switch.dart';

// ignore: camel_case_types
class radioPage extends StatefulWidget {
  @override
  _radioPageState createState() => _radioPageState();
}

// ignore: camel_case_types
class _radioPageState extends State<radioPage> {
  String radioItem = '';
  // ignore: unused_field
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Radio and checkbox'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('What is your fav pet?'),
              RadioListTile(
                groupValue: radioItem,
                title: Text('Jessy'),
                value: 'Item 1',
                onChanged: (val) {
                  setState(() {
                    radioItem = val;
                  });
                },
              ),
              RadioListTile(
                groupValue: radioItem,
                title: Text('Cesar'),
                value: 'Item 2',
                onChanged: (val) {
                  setState(() {
                    radioItem = val;
                  });
                },
              ),
              Text(
                '$radioItem',
                style: TextStyle(fontSize: 23),
              ),
              Text('what is your favourite food?'),
              Checkbox(
                value: true,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                  Text('briyani');
                },
              ),
              ElevatedButton(
                  child: Text('hello'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => bottomsheet()));
                  }),
              ElevatedButton(
                  child: Text('listviewdetail'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListViewBuilder()));
                  }),
            ]));
  }
}
