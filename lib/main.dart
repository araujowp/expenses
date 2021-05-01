
import 'package:expenses/core/app_text_styles.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  final _transacions = [
    Transaction(
        id: 't1',
        title: 'Acougue',
        value: 65.72,
        date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Conta de luz ', value: 223.17, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Despesas'),
        ),
        body: Column(
          children: _transacions.map((tr) {
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2 
                      )
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text('R\$ ${tr.value.toStringAsFixed(2)}', style: AppStyle.transactionText, )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tr.title, style: AppStyle.transactionTitle,),
                      Text(DateFormat('d MMM y').format(tr.date), style: AppStyle.transactionDate,),
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ));
  }
}
