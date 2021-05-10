import 'package:flutter/material.dart';
import 'file.dart';
import 'animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "ListView.builder", home: new ListViewBuilder());
  }
}

// ignore: must_be_immutable
class ListViewBuilder extends StatelessWidget {
  TextEditingController editingController = TextEditingController();
  List<TransactionArgument> transactionList = [
    TransactionArgument(
      "McDonalds",
      "12:12 AM IST • Sep 2",
      "images/mcdonalds.png",
    ),
    TransactionArgument(
      "Exchange on INR",
      "12:12 AM IST • Sep 2",
      "images/exchange.png",
    ),
    TransactionArgument(
      "Atm Withdrawal",
      "12:12 AM IST • Sep 2",
      "images/loadcurrency.png",
    ),
    TransactionArgument(
      "LoadCurrency",
      "12:12 AM IST • Sep 2",
      "images/clothing.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f7),
      appBar: AppBar(
        title: Center(child: Text("Recent Transactions")),
      ),
      body: Column(
        children: [
          Container(
            height: 80.0,
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {},
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 20.0, right: 20.0, bottom: 10.0),
              child: Container(
                  // height: 70.0,
                  // width: 355.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: transactionList.length,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SecondRoute(transactionList[index])),
                              );
                            },
                            child: Container(
                              height: 70.0,
                              width: double.infinity,
                              child: ListTile(
                                leading:
                                    Image.asset(transactionList[index].icon),
                                title: Text(transactionList[index].title),
                                subtitle: Text(transactionList[index].subtitle),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ))),
            ),
          ),
          Container(
            child: TextButton(
                child: Text(
                  'Load More',
                  style:
                      TextStyle(fontFamily: 'Poppins-Medium', fontSize: 20.0),
                ),
                onPressed: () {}),
          ),
          ElevatedButton(
              child: Text('listviewdetail'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Animationpage()));
              }),
        ],
      ),
    );
  }
}
