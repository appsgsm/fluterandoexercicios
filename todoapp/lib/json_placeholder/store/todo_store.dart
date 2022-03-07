import 'package:flutter/cupertino.dart';
import '../model/todo_model.dart';
import '../services/todo_service.dart';

class TodoStore extends ChangeNotifier {
  final _todoService = TodoService();

  List<TodoModel> _todos = [];
  List<TodoModel> get todos => List<TodoModel>.unmodifiable(_todos);

  Future<void> getAllTodos() async {
    _todos = await _todoService.getAllTodos();
    notifyListeners();
  }
}
