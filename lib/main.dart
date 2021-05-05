import 'package:expenses/components/transaction_user.dart';
import 'package:flutter/material.dart';
//import 'dart:html';

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        children: [
          Text('Graficos'),
          TransactionUser()
        ],
      ),
    );
  }
}
