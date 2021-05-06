import 'dart:math';

import 'package:expenses/components/transaction_list.dart';

import '../models/transaction.dart';
import 'package:flutter/material.dart';

import 'transaction_form.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
 
   final _transacions = [
    Transaction(id: 't1', title: 'Acougue', value: 65.72, date: DateTime.now()),
    Transaction(id: 't2', title: 'Conta de luz ', value: 223.17, date: DateTime.now()),
    Transaction(id: 't3', title: 'Conta de gas ', value: 223.17, date: DateTime.now()),
    Transaction(id: 't4', title: 'Conta de Agua ', value: 223.17, date: DateTime.now()),
    Transaction(id: 't5', title: 'Netflix ', value: 223.17, date: DateTime.now()),
    Transaction(id: 't6', title: 'Prime video ', value: 223.17, date: DateTime.now()),
  ];
 
  _addTransacion(String title, double value){
    final Transaction newTransaction  = new Transaction(
      id: Random().nextDouble().toString(),
      title: title, 
      value: value,
      date: DateTime.now(),
    );
    setState(() {
    _transacions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransacionList(_transacions),
        TransacionForm(_addTransacion)
      ],
    );
  }
}