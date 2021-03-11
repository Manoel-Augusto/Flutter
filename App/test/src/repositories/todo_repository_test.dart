import 'package:App/repositories/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final repository = TodoRepository();
  test('Deve trazer uma lista de TodoModel', () async {
    final list = await repository.fetchTodos();
    print(list);
  });
}
