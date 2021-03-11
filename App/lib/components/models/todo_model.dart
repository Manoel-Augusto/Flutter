class TodoModel {
  String data;
  String nome;
  int quantidade;
  int valor;

  TodoModel({this.data, this.nome, this.quantidade, this.valor});

  TodoModel.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    nome = json['nome'];
    quantidade = json['quantidade'];
    valor = json['valor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    data['nome'] = this.nome;
    data['quantidade'] = this.quantidade;
    data['valor'] = this.valor;
    return data;
  }
}
