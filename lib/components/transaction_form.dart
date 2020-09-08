import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: <Widget>[
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
              ),
              TextField(
                controller: valueController,
                decoration: InputDecoration(
                  labelText: 'Price (R\$)',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                    onPressed: () {
                      print(titleController.text);
                      print(valueController.text);
                    },
                    child: Text('New Transaction'),
                    textColor: Colors.purple,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
