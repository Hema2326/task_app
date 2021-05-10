import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unused_import
import 'package:task_app/Welcomepage.dart';
import 'package:task_app/login.dart';
import 'package:local_auth/local_auth.dart';

// ignore: camel_case_types
class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

// ignore: unused_element
class _SecondScreenState extends State<SecondScreen> {
  // ignore: unused_field
  bool _hasBiometricSenson;

  // ignore: unused_field
  List<BiometricType> _availableBiomatrics;
  // ignore: unused_field
  String _isAuthorized = "NOT AUTHORIZED";
  LocalAuthentication authentication = LocalAuthentication();
  Future<void> _checkForBiometric() async {
    bool hasBiometric;
    try {
      hasBiometric = await authentication.canCheckBiometrics;
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;
    setState(() {
      _hasBiometricSenson = hasBiometric;
    });
  }

  Future<void> _getListofBiometric() async {
    // ignore: non_constant_identifier_names
    List<BiometricType> ListofBiometric;
    try {
      ListofBiometric = await authentication.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;
    setState(() {
      _availableBiomatrics = ListofBiometric;
    });
  }

  Future<void> _getAuthentication() async {
    bool isAutherized = false;
    try {
      // ignore: deprecated_member_use
      isAutherized = await authentication.authenticateWithBiometrics(
          localizedReason: "SCAN YOUR FINGER PRINT TO GET AUTHORIZED",
          useErrorDialogs: true,
          stickyAuth: false);
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;
    setState(() {
      _isAuthorized = isAutherized ? "AUTHORIZED" : "NOT AUTHORIZED";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 224.0),
            child: Expanded(
              child: Container(
                child: Image(
                  image: AssetImage('images/logo_splash.png'),
                  width: 154.0,
                  height: 70.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Expanded(
              child: Text(
                'Get Started By Logging in!',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: "Poppins-Regular",
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: 115,
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 91.0),
            child: Text(
              'FINGERPRINT UNLOCK',
              style: TextStyle(fontFamily: 'Poppins-Regular'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 5,
                    color: Colors.grey[200],
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: GestureDetector(
                  onLongPress: () {
                    _checkForBiometric();
                    _getListofBiometric();
                    _getAuthentication();
                    print("authenticated");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Welcomepage()));
                  },
                  child: Image(
                    image: AssetImage('images/fingerprint.png'),
                    width: 80.0,
                    height: 80.0,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 14,
          ),
          Text('or'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginscreen()));
                  },
                  child: Text(
                    'Login with Customer ID',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Poppins-Regular',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
