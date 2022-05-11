import 'package:dio/dio.dart';
import 'package:playground/services/http_client_interface.dart';

import '../models/todo_model.dart';

const url = 'https://jsonplaceholder.typicode.com/todos';

class JsonPlaceholderService {
  final IHttpClient client;

  JsonPlaceholderService(this.client);

  Future<List<TodoModel>> getTodos() async {
    final body = await client.get(url);

    return (body as List).map(TodoModel.fromJson).toList();
  }
}
