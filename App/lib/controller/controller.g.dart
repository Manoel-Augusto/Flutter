// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  Computed<String> _$alteracaoComputed;

  @override
  String get alteracao =>
      (_$alteracaoComputed ??= Computed<String>(() => super.alteracao,
              name: 'ControllerBase.alteracao'))
          .value;

  final _$valorAtom = Atom(name: 'ControllerBase.valor');

  @override
  double get valor {
    _$valorAtom.reportRead();
    return super.valor;
  }

  @override
  set valor(double value) {
    _$valorAtom.reportWrite(value, super.valor, () {
      super.valor = value;
    });
  }

  final _$produtoAtom = Atom(name: 'ControllerBase.produto');

  @override
  Produto get produto {
    _$produtoAtom.reportRead();
    return super.produto;
  }

  @override
  set produto(Produto value) {
    _$produtoAtom.reportWrite(value, super.produto, () {
      super.produto = value;
    });
  }

  final _$quantidadeAtom = Atom(name: 'ControllerBase.quantidade');

  @override
  int get quantidade {
    _$quantidadeAtom.reportRead();
    return super.quantidade;
  }

  @override
  set quantidade(int value) {
    _$quantidadeAtom.reportWrite(value, super.quantidade, () {
      super.quantidade = value;
    });
  }

  final _$nomeAtom = Atom(name: 'ControllerBase.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$isLoadingAtom = Atom(name: 'ControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  dynamic mudarValor(String novoValor) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.mudarValor');
    try {
      return super.mudarValor(novoValor);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarQuantidade(String novaQuantidade) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.mudarQuantidade');
    try {
      return super.mudarQuantidade(novaQuantidade);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNome(String novoNome) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setNome');
    try {
      return super.setNome(novoNome);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setProduto() {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setProduto');
    try {
      return super.setProduto();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIsLoading() {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setIsLoading');
    try {
      return super.setIsLoading();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
valor: ${valor},
produto: ${produto},
quantidade: ${quantidade},
nome: ${nome},
isLoading: ${isLoading},
alteracao: ${alteracao}
    ''';
  }
}
