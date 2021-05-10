// import 'package:aes_crypt/aes_crypt.dart';
// import 'package:dropdownselection/location.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/material.dart';
// import 'package:dropdownselection/imagepicker.dart';
// import 'contactaccess.dart';
// import 'package:dropdownselection/mapmarker.dart';
// import 'package:dropdownselection/encrytion.dart';

class MultiSelection extends StatefulWidget {
  _MultiSelectionWidget createState() => _MultiSelectionWidget();
}

class _MultiSelectionWidget extends State {
  // ignore: non_constant_identifier_names
  Map<String, bool> List = {
    'Flutter': false,
    'IOS': false,
    'Android': false,
  };

  var holder_1 = [];
  getItems() {
    List.forEach((key, value) {
      if (value == true) {
        holder_1.add(key);
      }
    });

    print(holder_1);

    holder_1.clear();
  }

  final plainText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit';

  final key = encrypt.Key.fromLength(32);
  final iv = encrypt.IV.fromLength(16);

  @override
  Widget build(BuildContext context) {
    final encrypter = encrypt.Encrypter(encrypt.AES(key));

    final encrypted = encrypter.encrypt(plainText, iv: iv);
    final decrypted = encrypter.decrypt(encrypted, iv: iv);
    print(decrypted);
    print(encrypted.bytes);
    print(encrypted.base16);
    print(encrypted.base64);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Multi Selection Page'),
      ),
      body: Column(children: [
        // ignore: deprecated_member_use
        RaisedButton(
          child: Text(" Get Checked Checkbox Values "),
          onPressed: getItems,
          color: Colors.pink,
          textColor: Colors.white,
          splashColor: Colors.grey,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        ),
        Expanded(
          child: ListView(
            children: List.keys.map((String key) {
              return new CheckboxListTile(
                title: new Text(key),
                value: List[key],
                activeColor: Colors.deepPurple[400],
                checkColor: Colors.white,
                onChanged: (bool value) {
                  setState(() {
                    List[key] = value;
                  });
                },
              );
            }).toList(),
          ),
        ),
        // ignore: deprecated_member_use

        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   // ignore: deprecated_member_use
        // child: RaisedButton(
        //     color: Colors.blue,
        //     child: Text('Image Selection page'),
        //     onPressed: () {
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => ImagePage()));
        //     }),
        // ),

        // ignore: deprecated_member_use
        // RaisedButton(
        //     color: Colors.blue,
        //     child: Text('Contact Selection page'),
        //     onPressed: () {
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => ReadContacts()));
        //     }),
        // ignore: deprecated_member_use
        // RaisedButton(
        //     color: Colors.blue,
        //     child: Text(' Location Selection page'),
        //     onPressed: () {
        //       Navigator.push(
        //           context, MaterialPageRoute(builder: (context) => HomePage()));
        //     }),
        // ignore: deprecated_member_use
        // RaisedButton(
        //     color: Colors.blue,
        //     child: Text(' Map Marker  page'),
        //     onPressed: () {
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => MapAccess()));
        //     }),
        // // ignore: deprecated_member_use
        // RaisedButton(
        //     color: Colors.blue,
        //     child: Text(' Encyption page'),
        //     onPressed: () {
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => Encryptionpage()));
        //     }),
      ]),
    );
  }
}
