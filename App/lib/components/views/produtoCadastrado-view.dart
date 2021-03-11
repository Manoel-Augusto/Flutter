import 'package:App/components/models/produto.dart';
import 'package:App/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:App/providers/produtos.dart';

class ProdutoCadastrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final List<Produto> loadProdutos = Provider.of(context).items;
    return Scaffold(
      backgroundColor: Color.fromRGBO(164, 92, 125, 1),
      body: SafeArea(
          child: Card(
              margin: EdgeInsets.only(top: 80, bottom: 50),
              color: Colors.white38,
              elevation: 20,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('item $index'),
                    );
                  }))),
    );
  }
}
