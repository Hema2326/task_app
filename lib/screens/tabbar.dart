import 'package:flutter/material.dart';

// ignore: camel_case_types
class tabbar extends StatefulWidget {
  @override
  _tabbarState createState() => _tabbarState();
}

// ignore: camel_case_types
class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.flight)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_walk)),
              ],
            ),
            title: Text('Tab Bar'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.flight, size: 350),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
              Icon(Icons.directions_walk, size: 350),
            ],
          ),
        ));
  }
}
