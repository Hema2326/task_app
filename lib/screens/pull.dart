import 'package:flutter/material.dart';
import 'package:task_app/screens/localization.dart';

class HomesPage extends StatefulWidget {
  @override
  _HomesPageState createState() => _HomesPageState();
}

class _HomesPageState extends State<HomesPage> {
  GlobalKey<ScaffoldState> _scaffoldKey;

  List<String> _demoData;

  @override
  void initState() {
    // initializing states
    _demoData = [
      "Flutter",
      "React Native",
      "Cordova/ PhoneGap",
      "Native Script"
    ];
    _scaffoldKey = GlobalKey();
    super.initState();
  }

  @override
  void dispose() {
    // disposing states
    _scaffoldKey?.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('pull to Refresh'),
          actions: [
            IconButton(
                icon: Icon(Icons.forward),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LangPage()));
                }),
          ],
        ),
        // Widget to show RefreshIndicator
        body: RefreshIndicator(
          child: ListView.builder(
            itemBuilder: (ctx, idx) {
              // List Item
              return Card(
                child: ListTile(
                  title: Text(_demoData[idx]),
                ),
              );
            },

            // Length of the list
            itemCount: _demoData.length,

            // To make listView scrollable
            // even if there is only a single item.
            physics: const AlwaysScrollableScrollPhysics(),
          ),
          // Function that will be called when
          // user pulls the ListView downward
          onRefresh: () {
            return Future.delayed(
              Duration(seconds: 1),
              () {
                /// adding elements in list after [1 seconds] delay
                /// to mimic network call
                ///
                /// Remember: [setState] is necessary so that
                /// build method will run again otherwise
                /// list will not show all elements
                setState(() {
                  _demoData.addAll(["Ionic", "Xamarin"]);
                });

                // showing snackbar
                // ignore: deprecated_member_use
                _scaffoldKey.currentState.showSnackBar(
                  SnackBar(
                    content: const Text('Page Refreshed'),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
