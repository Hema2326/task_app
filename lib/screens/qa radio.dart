import 'package:flutter/material.dart';
import 'package:task_app/screens/multiselection.dart';

class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  String radioItem = '';
  // ignore: unused_field
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Radio and checkbox'),
          actions: [
            IconButton(
                icon: Icon(Icons.forward),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MultiSelection()));
                }),
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text('1..What is your fav pet?'),
                        ],
                      ),
                      RadioListTile(
                        groupValue: radioItem,
                        title: Text('Jessy'),
                        value: 'Jessy',
                        onChanged: (val) {
                          setState(() {
                            radioItem = val;
                          });
                        },
                      ),
                      RadioListTile(
                        groupValue: radioItem,
                        title: Text('Cesar'),
                        value: 'Cesar',
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
                      Row(
                        children: [
                          Text('2..what is your favourite food?'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          Text('briyani'),
                        ],
                      ),
                    ])))));
  }
}
