// import 'package:flutter/material.dart';
// import 'package:flutter_currency_converter/Currency.dart';
// import 'package:flutter_currency_converter/flutter_currency_converter.dart';

// class Exchangge extends StatefulWidget {
//   @override
//   _ExchanggeState createState() => _ExchanggeState();
// }

// class _ExchanggeState extends State<Exchangge> {
//   // ignore: non_constant_identifier_names
//   String usd_lkr = "";
//   // ignore: non_constant_identifier_names
//   String aud_eur = "";
//   // ignore: non_constant_identifier_names
//   String aed_chf = "";

//   @override
//   void initState() {
//     super.initState();

//     getAmounts();
//   }

//   void getAmounts() async {
//     // ignore: non_constant_identifier_names
//     var usd_lkr_ = await FlutterCurrencyConverter.convert(
//         Currency(Currency.USD, amount: 100), Currency(Currency.LKR));

//     // ignore: non_constant_identifier_names
//     var aud_eur_ = await FlutterCurrencyConverter.convert(
//         Currency(Currency.AUD, amount: 200), Currency(Currency.EUR));

//     // ignore: non_constant_identifier_names
//     var aed_chf_ = await FlutterCurrencyConverter.convert(
//         Currency(Currency.AED, amount: 945), Currency(Currency.CHF));

//     setState(() {
//       usd_lkr = usd_lkr_.toString();
//       aud_eur = aud_eur_.toString();
//       aed_chf = aed_chf_.toString();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Currency Convertor Example'),
//         ),
//         body: Container(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     "1 USD to LKR = ",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//                   ),
//                   Text(
//                     "$usd_lkr",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     "200 AUD to EUR = ",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//                   ),
//                   Text(
//                     "$aud_eur",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     "945 AED to CHF = ",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//                   ),
//                   Text(
//                     "$aed_chf",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
