import 'package:dio/dio.dart';

import '../model/todo_model.dart';

class TodoService {
  final dio = Dio();

  Future<List<TodoModel>> getAllTodos() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/todos');
    final list = response.data as List;

    final todos = list.map(TodoModel.fromJson).toList();

    return todos;
  }
}
