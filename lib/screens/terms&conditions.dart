import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: camel_case_types
class termspage extends StatefulWidget {
  @override
  _termspageState createState() => _termspageState();
}

// ignore: camel_case_types
class _termspageState extends State<termspage> {
  // ignore: unused_field
  WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
            initialUrl: 'https://sstechpark.in',
            javascriptMode: JavascriptMode.unrestricted,
            // ignore: non_constant_identifier_names
            onWebViewCreated: (WebViewController WebViewController) {
              _controller = WebViewController;
            }));
  }
}
