import 'package:todoapp/json_placeholder/store/todo_store.dart';

void main() async {
  final store = TodoStore();

  await store.getAllTodos();

  print(store.todos[0].title);
}
