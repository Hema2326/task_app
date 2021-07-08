import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:task_app/screens/randomuser/random_user_screen.dart';

class Exchangeui extends StatefulWidget {
  @override
  _ExchangeuiState createState() => _ExchangeuiState();
}

class _ExchangeuiState extends State<Exchangeui> {
  final currencyController = TextEditingController();
  String _currentCurrency;
  String inrValue = "";

  String selectedValue;
  bool isdropDownSelected = false;
  List listItem = ["USD", "EURO", "YEN"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Exchange USD'),
          backgroundColor: Color(0xff1c1d22),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(Icons.forward),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RandomUserScrren()));
                }),
          ],
        ),
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              child: Image(
                image: AssetImage("images/bg.png"),
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.circular(15.0)),
                child: Column(children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Text(
                        'Exchange Money',
                        style: TextStyle(
                          color: Color(0xff1c1d22),
                          fontFamily: "Poppins-SemiBold",
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ]),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5.0, left: 20.0, right: 120.0, bottom: 19.5),
                        child: Container(
                          width: 200,
                          child: Text(
                            'Find Out real-timeExchange rates & Exchange between yours balances',
                            style: TextStyle(
                                fontFamily: "Poppins-Medium",
                                fontSize: 10.0,
                                letterSpacing: 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Color(0xffb9b9bf),
                  ),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 20),
                      child: DropdownButton(
                        iconSize: 30,
                        value: _currentCurrency,
                        onChanged: (newValue) {
                          setState(() {
                            _currentCurrency = newValue;

                            selectedValue = newValue;

                            isdropDownSelected = true;
                          });
                        },
                        items: listItem.map(
                          (valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          },
                        ).toList(),
                        hint: Text(
                          'Select',
                          style: TextStyle(
                            fontFamily: "Poppins-Light",
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20, left: 120, top: 5.5),
                      child: Container(
                        width: 100,
                        child: TextField(
                            enabled: isdropDownSelected,
                            controller: currencyController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: ('value'),
                                contentPadding: const EdgeInsets.all(5),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                fillColor: Colors.white,
                                filled: true)),
                      ),
                    ),
                  ]),
                  Container(
                    child: Stack(alignment: Alignment.center, children: [
                      Divider(
                        color: Color(0xffb9b9bf),
                        indent: 1.0,
                      ),
                      ListTile(
                        title: Chip(
                          label: Text(
                            '1=0.91',
                            style: TextStyle(
                                fontFamily: "Poppins-SemiBold", fontSize: 10.0),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                      child: Text(
                        "INR",
                        style: TextStyle(
                          fontFamily: "Poppins-Light",
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 160, right: 20.0, bottom: 20.5),
                      child: Container(
                        width: 100,
                        child: Text(
                          inrValue,
                          maxLines: 5,
                          style: TextStyle(
                            fontFamily: "Poppins-Light",
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ]),
                  Divider(
                    color: Color(0xffb9b9bf),
                  ),
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: ElevatedButton(
                        child: Text('exchange now'),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0))),
                        onPressed: () {
                          setState(() {
                            inrValue = getInrValue(currencyController.text);
                          });
                        },
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ]),
        ));
  }

  String getInrValue(value) {
    double enteredValue = double.parse(value);
    if (selectedValue == "USD") {
      enteredValue = enteredValue * 72;
    } else if (selectedValue == "EURO") {
      enteredValue = enteredValue * 89;
    } else if (selectedValue == "YEN") {
      enteredValue = enteredValue * 0.66;
    }
    return (enteredValue).toString();
  }
}
