import 'package:expenses/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'New running shoes',
      value: 310.17,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New shirt',
      value: 30.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expenses"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Card(
                color: Colors.blue,
                elevation: 5,
                child: Text('Graph'),
              ),
            ),
            Column(
              children: _transactions.map((transaction) {
                return Card(
                    child: Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.purple[50],
                      width: 2,
                    )),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      transaction.value.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(transaction.title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        transaction.date.toString(),
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ]));
              }).toList(),
            )
          ],
        ));
  }
}
