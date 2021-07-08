import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:social_share/social_share.dart';

import 'package:screenshot/screenshot.dart';
import 'dart:io';

import 'package:task_app/screens/exchangeui.dart';

class Socialshares extends StatefulWidget {
  @override
  _SocialsharesState createState() => _SocialsharesState();
}

class _SocialsharesState extends State<Socialshares> {
  @override
  void initState() {
    super.initState();
  }

  ScreenshotController screenshotController = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Social Media'),
          actions: [
            IconButton(
                icon: Icon(Icons.forward),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Exchangeui()));
                }),
          ],
        ),
        body: Screenshot(
            controller: screenshotController,
            child: Container(
                color: Colors.white,
                alignment: Alignment.center,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // ignore: deprecated_member_use
                      RaisedButton(
                        onPressed: () async {
                          PickedFile file = await ImagePicker().getImage(
                            source: ImageSource.gallery,
                          );
                          SocialShare.shareInstagramStory(
                            file.path,
                            backgroundTopColor: "#ffffff",
                            backgroundBottomColor: "#000000",
                            attributionURL:
                                "https://www.instagram.com/hema.ghn/",
                          ).then((data) {
                            print(data);
                          });
                        },
                        child: Text("Share On Instagram Story"),
                      ),
                      // ignore: deprecated_member_use
                      RaisedButton(
                        onPressed: () {
                          screenshotController
                              .capture(delay: Duration(milliseconds: 20))
                              .then((image) async {
                            Directory tempDir = await getTemporaryDirectory();
                            String filepath = '${tempDir.path}/my_image.jpg';
                            File(filepath).writeAsBytes(image);
                            SocialShare.shareInstagramStory(
                              filepath,
                              backgroundTopColor: "#ffffff",
                              backgroundBottomColor: "#000000",
                              attributionURL:
                                  "https://www.instagram.com/hema.ghn/",
                              backgroundImagePath: filepath,
                            ).then((data) {
                              print(data);
                            });
                          });
                        },
                        child: Text("Share On Instagram Story with background"),
                      ),
                    ]))));
  }
}
