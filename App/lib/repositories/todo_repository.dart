import 'package:App/components/models/todo_model.dart';
import 'package:dio/dio.dart';

class TodoRepository {
  final dio = Dio();
  //final url = 'https://jsonplaceholder.typicode.com/todos';
  final url =
      'https://saboretto-7e92d.firebaseio.com/produtos.json?print=pretty';

  Future<List> fetchTodos() async {
    final response = await dio.get(url);
    final list = response.data as List;

    List<TodoModel> todos = [];
    for (var json in list) {
      final todo = TodoModel.fromJson(json);
      todos.add(todo);
    }
    return todos;
  }
}
