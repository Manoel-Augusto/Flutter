import 'package:flutter/material.dart';

class VendaController extends StatelessWidget {
  final String quantidade;

  const VendaController({this.quantidade});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Text(
          'INFORME OS DADOS DA VENDA!!!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    ));
  }
}
