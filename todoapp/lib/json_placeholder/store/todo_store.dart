import 'package:flutter/cupertino.dart';

import '../model/todo_model.dart';

class TodoStore extends ChangeNotifier {
  final List<TodoModel> todos = [];

  Future<List<TodoModel>> getAllTodos() async {
    return [];
  }
}
