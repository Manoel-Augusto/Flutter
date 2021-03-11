import 'dart:convert';

import 'package:http/http.dart' as http;

class ProdutoLoad {
  List<ProdutoLoad> get items => [..._items];
  List<ProdutoLoad> _items = [];
  String _produtoId;
  String _nome;
  int _quantidade;
  double _valor;
  //DateTime _data = DateTime.now();

  //URL do banco
  final _url = 'https://saboretto-7e92d.firebaseio.com/produtos.json';
  ProdutoLoad(
    this._nome,
    this._quantidade,
    this._valor,
  );

  void get getLista {
    return _items.forEach((element) => {_items});
  }

  Future<void> loadProdutos() async {
    final response = await http.get(_url);
    Map<String, dynamic> dados = json.decode(response.body);
    dados.forEach((produtoId, produtoDados) {
      _items.add(ProdutoLoad(
        produtoDados['nome'],
        produtoDados['quantidade'],
        produtoDados['valor'],
      ));
    });
  }

  void imprimir() {
    print(_nome);
    print(_valor);
    print(_quantidade);
  }
}
