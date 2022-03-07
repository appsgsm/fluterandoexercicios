import 'package:todoapp/json_placeholder/datasources/local_todo_datasource.dart';
import 'package:todoapp/json_placeholder/datasources/remote_todos_datasource.dart';
import 'package:todoapp/json_placeholder/model/todo_model.dart';
import 'package:todoapp/json_placeholder/services/check_internet_service.dart';

class TodoRepository {
  final remoteDatasource = RemoteTodosDatasource();
  final localDatasource = LocalTodoDatasource();
  final checkInternetService = CheckInternetService();

  Future<List<TodoModel>> getTodos() async {
    late List list;
    if (await checkInternetService.isConnected()) {
      list = await remoteDatasource.getTodos();
      await localDatasource.saveTodos(list); // usa sharedpreferences
    } else {
      list = await localDatasource.getTodos();
    }
    final todos = list.map(TodoModel.fromJson).toList();
    return todos;
  }
}
