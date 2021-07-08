import 'package:flutter/material.dart';
import 'package:flutter_walkthrough/walkthrough.dart';
import 'package:task_app/screens/emailcall.dart';

class WalkthroughView extends StatefulWidget {
  WalkthroughView({Key key}) : super(key: key);

  @override
  _WalkthroughViewState createState() => _WalkthroughViewState();
}

class _WalkthroughViewState extends State<WalkthroughView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Walkthroughview'),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
                icon: Icon(Icons.forward),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Calls()));
                }),
          ],
        ),
        body: Stack(children: <Widget>[
          PageView(
            children: <Widget>[
              Walkthrough(
                title: "Title 1",
                content: "Content 1",
                imageIcon: Icons.restaurant_menu,
              ),
              Walkthrough(
                title: "Title 2",
                content: "Content 2",
                imageIcon: Icons.search,
              ),
              Walkthrough(
                title: "Title 3",
                content: "Content 3",
                imageIcon: Icons.shopping_cart,
              ),
              Walkthrough(
                title: "Title 4",
                content: "Content 4",
                imageIcon: Icons.verified_user,
              ),
            ],
          ),
        ]));
  }
}
