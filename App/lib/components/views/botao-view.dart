import 'package:App/components/views/registroVenda-view.dart';
import 'package:App/components/views/venda-view.dart';
import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String nome;
  Botao({this.nome});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 250,
          height: 45,
          child: Container(
            child: RaisedButton(
              elevation: 30,
              highlightElevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistroVenda(nome: nome)));
              },
              color: Color.fromRGBO(255, 211, 161, 1),
              child: Text(
                nome,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(230, 96, 129, 1),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
