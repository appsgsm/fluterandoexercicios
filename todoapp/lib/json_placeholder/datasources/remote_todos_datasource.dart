import 'package:dio/dio.dart';

class RemoteTodosDatasource {
  final dio = Dio();

  Future<List> getTodos() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/todos');
    return response.data;
  }
}
