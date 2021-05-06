import 'package:expenses/core/app_text_styles.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransacionList extends StatelessWidget {

  final List<Transaction> transacions;

  TransacionList(this.transacions); 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
            child: Column(
                children: transacions.map((tr) {
                  return Card(
                    child: Row(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2)),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'R\$ ${tr.value.toStringAsFixed(2)}',
                            style: AppStyle.transactionText,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tr.title,
                              style: AppStyle.transactionTitle,
                            ),
                            Text(
                              DateFormat('d MMM y').format(tr.date),
                              style: AppStyle.transactionDate,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
      ),
    );
  }
}