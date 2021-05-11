import 'package:flutter/material.dart';

import 'nextscreen.dart';

class Welcomepage extends StatefulWidget {
  @override
  _WelcomepageState createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 114.0, left: 112.0, right: 112.0),
            child: Container(
              child: Image(
                image: AssetImage('images/logo_splash.png'),
                width: 154.0,
                height: 70.0,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30.0, left: 106.0, right: 106.0),
            child: Expanded(
              child: Text(
                'Welcome Aboard!',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: "Poppins-Regular",
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 71.0, left: 30.0),
            child: Container(
                child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      'LOGIN PIN',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontFamily: 'Poppins-Medium',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, right: 20.0),
                  child: Container(
                    height: 48.0,
                    width: 335.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: 'Enter your Pin'),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
            child: Container(
              height: 42.0,
              width: 335.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        // ignore: non_constant_identifier_names
                        MaterialPageRoute(builder: (Context) => nextScreen()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins-Medium',
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              child: Text(
                'Forgot PIN?',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins-Medium',
                ),
              ),
            ),
          ),
        ]))));
  }
}
