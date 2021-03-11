import 'dart:convert';

import 'package:App/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Produto {
  List<Produto> _items = [];
  List<Produto> get items => [..._items];
  //String _produtoId='id do produto';
  String _nome;
  int _quantidade;
  double _valor;
  DateTime _data = DateTime.now();

  Produto(this._nome, this._quantidade, this._valor);

  void get getLista {
    return _items.forEach((element) => {_items});
  }

  //URL do banco
  final _url = 'https://saboretto-7e92d.firebaseio.com/produtos.json';

//POST Adiciona produto ao banco de dados
  Future<void> addProduto(novoProduto) async {
    final response = await http.post(
      _url,
      body: json.encode({
        'nome': novoProduto._nome,
        'quantidade': novoProduto._quantidade,
        'valor': novoProduto._valor,
        'data': _data.toString(),
      }),
    );
    print(json.decode(response.body)['name']);
  }

  //GET carrega os dados  do banco

  Future<List<Produto>> loadProdutos() async {
    final response = await http.get(_url);
    print(json.decode(response.body));
    Map<String, dynamic> dados = json.decode(response.body);

    dados.forEach((produtoId, produtoDados) {
      print(produtoDados['nome']);
      _items.add(Produto(
        produtoDados['nome'],
        produtoDados['quantidade'],
        produtoDados['valor'],
      ));
      print(_items);
    });
    return _items;
  }

  /* get getProduto {
    return [_nome, _quantidade, _valor, _data];
  }*/

/*
Produto(
        nome: produtoDados['nome'],
        quantidade: produtoDados['quantidade'],
        valor: produtoDados['valor'],
        data: produtoDados['data'],
      )

*/
}
