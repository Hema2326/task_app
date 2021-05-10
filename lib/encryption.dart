// import 'package:dropdownselection/hero.dart';
// import 'package:dropdownselection/lottieview.dart';
// import 'package:dropdownselection/pullanimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_string_encryption/flutter_string_encryption.dart';

// import 'animations.dart';
import 'package:task_app/rsaencryption.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Encyption',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Encryptionpage(),
    );
  }
}

class Encryptionpage extends StatefulWidget {
  @override
  _EncryptionPageWidget createState() => _EncryptionPageWidget();
}

class _EncryptionPageWidget extends State {
  TextEditingController pass = TextEditingController();

  var key = "null";
  String encryptedS, decryptedS;
  var password = "null";
  PlatformStringCryptor cryptor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Encryption Page'),
      ),
      body: Center(
          child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: pass,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.blue),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: Colors.pink),
                ),
              ),
            ),
          ),
          // ignore: deprecated_member_use
          TextButton(
            child: Text("Encrypt"),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.pink),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blueGrey),
              overlayColor: MaterialStateProperty.all<Color>(Colors.pink),
            ),
            onPressed: () {
              Encrypt();
            },
          ),

          Padding(
            padding: const EdgeInsets.only(),
            child: Text('encryptedS'),
          ),

          TextButton(
            child: Text("Decrypt"),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.pink),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blueGrey),
              overlayColor: MaterialStateProperty.all<Color>(Colors.pink),
            ),
            onPressed: () {
              Decrypt();
            },
          ),
          Text('decryptedS'),
          // ignore: deprecated_member_use
          RaisedButton(
              color: Colors.blue,
              child: Text(' Encyption page'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Encryptionspage()));
              }),
          // ignore: deprecated_member_use
          // RaisedButton(
          //     color: Colors.blue,
          //     child: Text(' Animation page'),
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => Animationpage()));
          //     }),
          // ignore: deprecated_member_use
          // RaisedButton(
          //     color: Colors.blue,
          //     child: Text(' Hero Animation page'),
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => FirstScreen()));
          //     }),
          // ignore: deprecated_member_use
          // RaisedButton(
          //     color: Colors.blue,
          //     child: Text(' pull to referesh Animation page'),
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => HomesPage()));
          //     }),
          // ignore: deprecated_member_use
          // RaisedButton(
          //     color: Colors.blue,
          //     child: Text(' Lottie View page'),
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => LottiePage()));
          //     }),
        ],
      )),
    );
  }

  // ignore: non_constant_identifier_names
  void Encrypt() async {
    cryptor = PlatformStringCryptor();
    final salt = await cryptor.generateSalt();
    password = pass.text;
    key = await cryptor.generateKeyFromPassword(password, salt);
    // here pass the password entered by user and the key
    encryptedS = await cryptor.encrypt(password, key);
    print(encryptedS);
  }

  // ignore: non_constant_identifier_names
  void Decrypt() async {
    try {
      //here pass encrypted string and the key to decrypt it
      decryptedS = await cryptor.decrypt(encryptedS, key);
      print(decryptedS);
    } on MacMismatchException {}
  }
}
