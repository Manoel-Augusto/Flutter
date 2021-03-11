import 'package:App/components/models/produto.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  double valor = 3.00;

  @observable
  Produto produto;

  @observable
  int quantidade = 1;

  @observable
  String nome;

  @observable
  bool isLoading = false;

  @computed
  String get alteracao => "$valor $quantidade";

  @action
  mudarValor(String novoValor) {
    valor = double.parse(novoValor);
  }

  @action
  mudarQuantidade(String novaQuantidade) {
    quantidade = int.parse(novaQuantidade);
  }

  @action
  setNome(String novoNome) {
    nome = novoNome;
  }

  //acesso ao banco

  @action
  setProduto() {
    produto.loadProdutos();
  }

  @action
  setIsLoading() {
    if (isLoading == false) {
      isLoading = true;
    } else if (isLoading == true) {
      isLoading = false;
    }
  }
}
