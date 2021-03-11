import 'package:App/controller/controller.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          maxLength: 4,
          onChanged: controller.mudarValor,
          decoration: InputDecoration(
            hintText: 'R\$ Valor',
            labelText: 'Editar Valor',
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          maxLength: 2,
          onChanged: controller.mudarQuantidade,
          decoration: InputDecoration(
            hintText: 'Quantidade',
            labelText: 'Editar Quantidade',
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.number,
        ),
        RaisedButton(
          child: Text(
            'CADASTRAR',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          onPressed: () {
            controller.alteracao;
            print(controller.alteracao);
          },
          color: Colors.purpleAccent[400],
        ),
        
      ],
    );
  }
}
