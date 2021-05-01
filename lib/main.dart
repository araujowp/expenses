import 'package:expenses/models/transaction.dart';
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

  final _transacions  = [
    Transaction(id: 't1', title: 'Acougue maminha e margarina', value: 65.72, date: DateTime.now()),
    Transaction(id: 't2', title: 'Conta de luz ', value: 223.17, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Despesas'),),
      body: Center(child: Text('oi oi oi ')), 
    );
  }
}