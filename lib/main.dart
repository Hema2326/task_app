import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:task_app/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    path: "assets/translations",
    supportedLocales: [
      Locale('en', 'US'),
      Locale('ar', 'AE'),
    ],
    fallbackLocale: Locale('en', 'US'),
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
  static void setLocale(BuildContext context, Locale newLocale) async {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.changeLanguage(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: _locale,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Splashscreen(),
    );
  }
}
