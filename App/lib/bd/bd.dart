import 'dart:convert';

import 'package:App/components/models/produto.dart';
import 'package:http/http.dart' as http;

Future imprimir() async {
  final todo = await fetch();
  print(todo.data);
  print(todo.nome);
  print(todo.quantidade);
  print(todo.valor);
  print(todo.produtoId);
}

Future<Todo> fetch() async {
  final _url =
      'https://saboretto-7e92d.firebaseio.com/produtos/-MV9eznQRy6RS9AfZIpV';
  final response = await http.get(_url);
  var json = jsonDecode(response.body);
  print(response.body);
  var todo = Todo.fromJson(json);
  return todo;
}

class Todo {
  final String produtoId = 'idd';
  final String nome;
  final int quantidade;
  final double valor;
  final String data;

  Todo({this.nome, this.quantidade, this.valor, this.data});

  factory Todo.fromJson(Map json) {
    return Todo(
        nome: json['nome'],
        quantidade: int.parse(json['quantidade']),
        valor: double.parse(json['valor']),
        data: json['data']);
  }

  Map toJson() {
    return {
      'data': data,
      'nome': nome,
      'quantidade': quantidade,
      'valor': valor,
      
    };
  }
}
