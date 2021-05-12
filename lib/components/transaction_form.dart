// ignore: avoid_web_libraries_in_flutter

import 'package:expenses/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class TransacionForm extends StatelessWidget {

  final titleControler = TextEditingController();
  final valueControler = TextEditingController();

  final void Function(String, double) onSubmit;

  TransacionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextField(
                          controller: titleControler,
                          decoration: InputDecoration(labelText: 'Titulo'),
                        ),
                        TextField(
                          controller: valueControler,
                          decoration: InputDecoration(labelText: 'Valor (R\$)'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(primary: Colors.purple,),
                              child: Text('Nova Transacao '),
                              onPressed: () {
                                final title = titleControler.text;
                                final value = double.tryParse(valueControler.text) ?? 0.0;
                                onSubmit(title, value);
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}