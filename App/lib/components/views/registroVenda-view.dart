import 'package:App/components/models/produto.dart';

import 'package:App/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class RegistroVenda extends StatelessWidget {
  final Controller controller = Controller();

  final double valor = 3;
  final int quantidade = 5;

  RegistroVenda({String nome}) {
    controller.setNome(nome);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(164, 92, 125, 1),
        body: SafeArea(child: LayoutBuilder(builder: (_, constraints) {
          return Row(
            children: [
              Container(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                color: Color.fromRGBO(164, 92, 125, 1),
                child: Padding(
                  padding: const EdgeInsets.only(top: 170, left: 10, right: 10),
                  child: Card(
                    color: Colors.white38,
                    elevation: 20,
                    margin: EdgeInsets.only(bottom: 150),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 5),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Nome:',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          '${controller.nome}',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Valor:',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Observer(
                                        builder: (_) {
                                          return Text(
                                            'R\$ ${controller.valor.toStringAsFixed(2)}',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Qtd:',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Observer(
                                        builder: (_) {
                                          return Text(
                                            '${controller.quantidade.toString()}',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              TextField(
                                cursorColor: Colors.amber,
                                maxLength: 4,
                                onChanged: controller.mudarValor,
                                decoration: InputDecoration(
                                  hintText: 'R\$ Valor',
                                  labelText: 'Editar Valor',
                                  labelStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      backgroundColor: Colors.blueAccent),
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
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      backgroundColor: Colors.blueAccent),
                                  border: OutlineInputBorder(),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  RaisedButton(
                                    elevation: 30,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      'CADASTRAR',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(230, 96, 129, 1),
                                      ),
                                    ),
                                    onPressed: () {
                                      final Produto produto = Produto(
                                        controller.nome,
                                        controller.quantidade,
                                        controller.valor,
                                        
                                      );
                                      controller.setIsLoading();

                                      controller.alteracao;
                                      final FocusScopeNode focus =
                                          FocusScope.of(context);

                                      if (!focus.hasPrimaryFocus &&
                                          focus.hasFocus) {
                                      } else {
                                        produto
                                            .addProduto(produto)
                                            .then((_) => {
                                                  controller.setIsLoading(),
                                                  showDialog<Null>(
                                                      context: context,
                                                      builder: (ctx) =>
                                                          AlertDialog(
                                                            title: Center(
                                                              child: Text(
                                                                  'PARABÉNS!!!'),
                                                            ),
                                                            content: Text(
                                                                'CADASTRO EFTUADO COM SUCESSO!!!'),
                                                            actions: [
                                                              FlatButton(
                                                                  child: Center(
                                                                    child: Text(
                                                                      'ok',
                                                                    ),
                                                                  ),
                                                                  onPressed: () => Navigator.of(
                                                                          context)
                                                                      .pushNamed(
                                                                          '/')),
                                                            ],
                                                          )),
                                                });
                                      }
                                    },
                                    color: Color.fromRGBO(255, 211, 161, 1),
                                  ),
                                  SizedBox(
                                    width: 130,
                                    height: 35,
                                    child: RaisedButton(
                                      elevation: 30,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Text(
                                        'VOLTAR',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromRGBO(230, 96, 129, 1),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.popUntil(context,
                                            ModalRoute.withName("/venda"));
                                      },
                                      color: Color.fromRGBO(255, 211, 161, 1),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        })));
  }
}
