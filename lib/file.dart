import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondRoute extends StatefulWidget {
  TransactionArgument argument;
  SecondRoute(this.argument);
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('valuepage'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 20.0, left: 20.0, right: 20.0, bottom: 10.0),
        child: Container(
          height: 70.0,
          width: 355.0,
          color: Colors.white,
          child: ListTile(
            leading: Image.asset(widget.argument.icon),
            title: Text(widget.argument.title),
            subtitle: Text(widget.argument.subtitle),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}

class TransactionArgument {
  String title;
  String subtitle;
  String icon;
  String price;
  TransactionArgument(this.title, this.subtitle, this.icon, {this.price});
}
