import 'package:App/bd/bd.dart';
import 'package:App/components/models/produto.dart';
import 'package:App/components/views/botao-view.dart';
import 'package:App/components/views/principal-view.dart';
import 'package:App/components/views/produtoCadastrado-view.dart';
import 'package:App/components/views/registroVenda-view.dart';
import 'package:App/components/views/venda-view.dart';
import 'package:App/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:App/bd/bd.dart';

class Home extends StatelessWidget {
  Controller controller = Controller();

  Widget build(BuildContext context) {
    return controller.isLoading
        ? Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.red,
            ),
          )
        : Container(
            color: Color.fromRGBO(164, 92, 125, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  padding: EdgeInsets.only(bottom: 10),
                  child: Image.asset('lib/assets/images/logo.png'),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () async {
                      final result =
                          await Navigator.pushNamed(context, "/venda");
                    },
                    color: Color.fromRGBO(255, 211, 161, 1),
                    elevation: 30,
                    child: Text(
                      'VENDER',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(230, 96, 129, 1),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () async => {controller.produto.loadProdutos()},
                    color: Color.fromRGBO(255, 211, 161, 1),
                    elevation: 30,
                    child: Text(
                      'ESTOQUE',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(230, 96, 129, 1),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProdutoCadastrado()));
                    },
                    color: Color.fromRGBO(255, 211, 161, 1),
                    elevation: 30,
                    child: Text(
                      'RESUMO',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(230, 96, 129, 1),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
              ],
            ),
          );
  }
}
