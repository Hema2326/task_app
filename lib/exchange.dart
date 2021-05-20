// import 'dart:async';
// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/Currency.dart';
import 'package:flutter_currency_converter/flutter_currency_converter.dart';

class Exchange extends StatefulWidget {
  @override
  _ExchangeState createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange> {
  final currencyController = TextEditingController();
  // ignore: non_constant_identifier_names
  String usd_Inr = "";
  // ignore: non_constant_identifier_names
  String eur_Inr = "";

  List _currency = ["USD", "INR", "EURO"];

  // List<DropdownMenuItem<String>> _dropDownMenuCurrencyItems;
  String _currentCurrency;

  List<DropdownMenuItem<String>> getDropDownMenuCurrencyItems() {
    // ignore: deprecated_member_use
    List<DropdownMenuItem<String>> items = new List();
    for (String currency in _currency) {
      items.add(
          new DropdownMenuItem(value: currency, child: new Text(currency)));
    }
    return items;
  }

  void changedDropDownItem(String selectedCurrency) {
    setState(() {
      _currentCurrency = selectedCurrency;
    });
  }

  @override
  void initState() {
    super.initState();
    getAmounts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1c1d22),
        title: Text('Exchange'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        child: Card(
          elevation: 3.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ListTile(
                title: TextField(
                  controller: currencyController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
                trailing: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton(
                      value: _currentCurrency,
                      items: <String>[
                        'USD',
                        'INR',
                        'EURO',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: _currentCurrency,
                          child: Text(value),
                        );
                      }).toList(),
                      hint: Text("Currencies"),
                      onChanged: changedDropDownItem,
                    ),
                  ),
                ),
              ),
              // ignore: missing_required_param
              IconButton(
                icon: Icon(Icons.arrow_downward),
              ),
              ListTile(
                // ignore: deprecated_member_use
                title: Chip(
                  label: Text(
                    'INR',
                    // ignore: deprecated_member_use
                    style: Theme.of(context).textTheme.display1,
                  ),
                ),
                trailing: Text('$eur_Inr'),
              ),
              Text(
                "2 euro =",
              ),
              // Text(
              //   "1 euro =",
              // ),
              // Text('$eur_Inr'),
            ],
          ),
        ),
      ),
    );
  }

  void getAmounts() async {
    // ignore: non_constant_identifier_names
    var usd_Inr_ = await FlutterCurrencyConverter.convert(
        Currency(Currency.USD), Currency(Currency.INR));

    // ignore: non_constant_identifier_names
    var eur_Inr_ = await FlutterCurrencyConverter.convert(
        Currency(Currency.EUR, amount: 2), Currency(Currency.INR));
    setState(() {
      usd_Inr = usd_Inr_.toString();
      eur_Inr = eur_Inr_.toString();
    });
  }
}
