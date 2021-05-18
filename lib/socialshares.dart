// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:social_share/social_share.dart';
// import 'dart:async';
// import 'package:screenshot/screenshot.dart';
// import 'dart:io';

// class Socialshares extends StatefulWidget {
//   @override
//   _SocialsharesState createState() => _SocialsharesState();
// }

// class _SocialsharesState extends State<Socialshares> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.blue,
//       title: Text('Social Media'),
//       ),
//       body:Screenshot(
//           controller: screenshotController,
//           child: Container(
//             color: Colors.white,
//             alignment: Alignment.center,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   'Running on: $_platformVersion\n',
//                   textAlign: TextAlign.center,
//                 ),
//                 RaisedButton(
//                   onPressed: () async {
//                     File file = await ImagePicker.pickImage(
//                       source: ImageSource.gallery,
//                     );
//                     SocialShare.shareInstagramStory(
//                       file.path,
//                       backgroundTopColor: "#ffffff",
//                       backgroundBottomColor: "#000000",
//                       attributionURL: "https://deep-link-url",
//                     ).then((data) {
//                       print(data);
//                     });
//                   },
//                   child: Text("Share On Instagram Story"),
//                 ),
//                 RaisedButton(
//                   onPressed: () async {
//                     await screenshotController.capture().then((image) async {
//                       SocialShare.shareInstagramStory(
//                         image.path,
//                         backgroundTopColor: "#ffffff",
//                         backgroundBottomColor: "#000000",
//                         attributionURL: "https://deep-link-url",
//                         backgroundImagePath: image.path,
//                       ).then((data) {
//                         print(data);
//                       });
//                     });
//                   },
//                   child: Text("Share On Instagram Story with background"),
//                 ),
//               ])));
//   }
// }
