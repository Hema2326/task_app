import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class LangPage extends StatefulWidget {
  @override
  _LangPageState createState() => _LangPageState();
}

class _LangPageState extends State<LangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LangPage").tr(),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hema").tr(),
            ElevatedButton(
              onPressed: () {
                EasyLocalization.of(context).setLocale(Locale('en', 'US'));
                // setState(() {});
                MyApp.setLocale(context, Locale('en', 'US'));
              },
              child: Text("English"),
            ),
            ElevatedButton(
                onPressed: () {
                  EasyLocalization.of(context).setLocale(Locale('ar', 'AE'));
                  // setState(() {});
                  MyApp.setLocale(context, Locale('ar', 'AE'));
                },
                child: Text("arabic")),
          ],
        ),
      ),
    );
  }
}
