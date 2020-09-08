import 'package:expenses/components/transaction_user.dart';
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
  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expenses"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Card(
                  color: Colors.blue,
                  elevation: 5,
                  child: Text('Graph'),
                ),
              ),
              TransactionUser()
            ],
          ),
        ));
  }
}
