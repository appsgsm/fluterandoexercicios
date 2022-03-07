import 'package:flutter_test/flutter_test.dart';
import 'package:todoapp/json_placeholder/store/todo_store.dart';

void main() async {
  final store = TodoStore();

  await store.getAllTodos();
}
