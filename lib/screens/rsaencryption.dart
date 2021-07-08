// import 'package:dropdownselection/sharedpreference.dart';
import 'package:pointycastle/pointycastle.dart' as crypto;
import 'package:flutter/material.dart';

import 'package:rsa_encrypt/rsa_encrypt.dart';
import 'package:task_app/screens/offlines.dart';

class Encryptionspage extends StatefulWidget {
  @override
  _EncryptionsPageWidget createState() => _EncryptionsPageWidget();
}

class _EncryptionsPageWidget extends State {
  TextEditingController passcontroller = TextEditingController();
  String encryptText;
  String decryptText;

  Future<crypto.AsymmetricKeyPair> futureKeyPair;

//to store the KeyPair once we get data from our future
  crypto.AsymmetricKeyPair keyPair;

  Future<crypto.AsymmetricKeyPair<crypto.PublicKey, crypto.PrivateKey>>
      getKeyPair() {
    var helper = RsaKeyHelper();
    return helper.computeRSAKeyPair(helper.getSecureRandom());
  }

  @override
  Widget build(BuildContext context) {
    futureKeyPair = getKeyPair();
    futureKeyPair.then((value) {
      keyPair = value;

      encryptText = encrypt(passcontroller.text, keyPair.publicKey);
      decryptText = decrypt(encryptText, keyPair.privateKey);
    });
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Encryptions Page'),
        actions: [
          IconButton(
              icon: Icon(Icons.forward),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Offlinee()));
              }),
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: passcontroller,
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
              setState(() {
                futureKeyPair = getKeyPair();
              });
            },
          ),

          //Text(encrypt(passcontroller.text, keyPair.publicKey)),

          TextButton(
            child: Text("Decrypt"),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.pink),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blueGrey),
              overlayColor: MaterialStateProperty.all<Color>(Colors.pink),
            ),
            onPressed: () {
              setState(() {
                futureKeyPair = getKeyPair();
              });
            },
          ),
        ],
      )),
    );
  }
}
