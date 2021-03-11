import 'package:flutter/material.dart';
import 'botao-view.dart';

class Venda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(164, 92, 125, 1),
      body: SafeArea(child: LayoutBuilder(
        builder: (_, constraints) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            // margin: EdgeInsets.only(left: 50, right: 50),
            child: Card(
                margin: EdgeInsets.only(top: 80, bottom: 50),
                color: Colors.white38,
                elevation: 20,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 25,
                            ),
                            Text(
                              'CLICK NO SABOR VENDIDO',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Container(
                              height: 30,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Botao(nome: 'Ninho/Nutela'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Botao(nome: 'Ninho/Morango'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Botao(nome: 'Prestígio'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Botao(nome: 'Sonho/Valsa'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Botao(nome: 'Bis'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Botao(nome: 'Mousse/Maracujá'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Botao(nome: 'Torta/limão'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Botao(nome: 'Choquito'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
          );
        },
      )),
    );
  }
}

/*
Padding(
  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Botao(nome: 'Ninho c/ Nutela'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Botao(nome: 'Ninho c/ Morango'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Botao(nome: 'Prestígio'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Botao(nome: 'Sonho de Valsa'),
                              ),
                                padding: const EdgeInsets.all(8.0),
                                child: Botao(nome: 'Bis'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Botao(nome: 'Mousse de Maracujá'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Botao(nome: 'Torta de limão'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Botao(nome: 'Ninho com Morango'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Botao(nome: 'Bis'),
                              ),

*/
