import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_app/screens/Welcomepage.dart';
import 'package:task_app/screens/terms&conditions.dart';

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  String name, email, phone;
  // ignore: unused_field
  TextEditingController _nameController;
  // ignore: unused_field
  TextEditingController _emailController;
  // ignore: unused_field
  TextEditingController _phoneController;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 224.0, left: 112.0, right: 112.0),
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
                      const EdgeInsets.only(top: 30.0, left: 71.0, right: 71.0),
                  child: Center(
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

                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 118.0, left: 30.0),
                  child: Text(
                    'CUSTOMER ID',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontFamily: 'Poppins-Regular',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0),
                  child: Container(
                    width: 335.0,
                    child: TextFormField(
                      autofillHints: [AutofillHints.email],
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: 'Enter your mail id/Mobile no'),
                      // ignore: missing_return
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'This field is required';
                        }
                        if (!value.contains('@')) {
                          return "A valid email should contain '@'";
                        }
                        if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                        ).hasMatch(value)) {
                          return "Please enter a valid email";
                        }
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 30.0),
                  child: Text(
                    'MOBILE NO',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontFamily: 'Poppins-Regular',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                  child: Container(
                    width: 335.0,
                    child: TextFormField(
                      autofillHints: [AutofillHints.telephoneNumber],
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: 'Enter your Mobile no'),
                      // ignore: missing_return
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'This field is required';
                        }
                        if (value.length != 10) {
                          return 'A valid phone number should be of 10 digits';
                        }
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 30.0),
                  child: Text(
                    'PASSWORD',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontFamily: 'Poppins-Medium',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0),
                  child: Container(
                    //height: 55.0,
                    width: 335.0,
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: 'Enter the password'),
                      // ignore: missing_return
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'This field is required';
                        }
                        if (value.length < 8) {
                          return 'Password should have atleast 8 characters';
                        }
                        if (!RegExp(r'[A-Z0-9a-z]*').hasMatch(value)) {
                          return 'Enter a stronger password';
                        }
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 200.0),
                  child: Text(
                    'Set/ForgotPassword?',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins-Medium',
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0, bottom: 32.0, right: 20.0, left: 20.0),
                  child: Container(
                    height: 42.0,
                    width: 335.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          if (!_formkey.currentState.validate()) {
                            return;
                          }

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  // ignore: non_constant_identifier_names
                                  builder: (Context) => Welcomepage()));
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
                  padding: const EdgeInsets.only(
                      left: 52.0, right: 51.0, bottom: 40.0),
                  child: RichText(
                    text: (TextSpan(
                      children: [
                        TextSpan(
                          text: 'By clicking login, you agree to our',
                          style: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              fontSize: 10.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        TextSpan(
                          text: 'Terms & Conditions.',
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      // ignore: non_constant_identifier_names
                                      builder: (Context) => termspage()));
                            },
                          style: TextStyle(
                            fontSize: 10.0,
                            decoration: TextDecoration.underline,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
