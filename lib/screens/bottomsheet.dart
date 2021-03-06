import 'package:flutter/material.dart';
import 'package:task_app/screens/contactpage.dart';
import 'package:task_app/screens/encryption.dart';
import 'package:task_app/screens/imagepicker.dart';
import 'package:task_app/screens/mapmarker.dart';
import 'package:task_app/screens/tabbar.dart';

class BottomSheets extends StatefulWidget {
  @override
  _BottomSheetsState createState() => _BottomSheetsState();
}

class _BottomSheetsState extends State<BottomSheets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' Bottom Sheet',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.forward),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Encryptionpage()));
              }),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " BOTTOM SHEET",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0.4,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: new Icon(Icons.photo),
                            title: new Text('Photo'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ImagePage()));
                            },
                          ),
                          ListTile(
                            leading: new Icon(Icons.map),
                            title: new Text('Map'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MapAccess()));
                            },
                          ),
                          ListTile(
                            leading: new Icon(Icons.contact_mail),
                            title: new Text('Contacts'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ReadContacts()));
                            },
                          ),
                          ListTile(
                            leading: new Icon(Icons.share),
                            title: new Text('tabbar'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => tabbar()));
                            },
                          ),
                        ],
                      );
                    });
              },
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
              color: Colors.blue,
              child: Text(
                'Click Me',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
