import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/material.dart';
import 'package:task_app/screens/singleselection.dart';

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
        backgroundColor: Colors.blue,
        title: Text('Multi Selection Page'),
        actions: [
          IconButton(
              icon: Icon(Icons.forward),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DropDown()));
              }),
        ],
      ),
      body: Column(children: [
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
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: ElevatedButton(
            onPressed: getItems,
            child: Text(
              " Get Checked Checkbox Values ",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
