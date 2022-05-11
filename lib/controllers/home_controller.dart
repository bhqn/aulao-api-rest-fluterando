import 'package:flutter/cupertino.dart';
import 'package:playground/services/json_placeholder_service.dart';

import '../models/todo_model.dart';
import '../services/dio_client.dart';

class HomeController extends ChangeNotifier {
  final JsonPlaceholderService _service;
  HomeController(this._service);
  var todos = <TodoModel>[];

  Future<void> fetchAllTodos() async {
    todos = await _service.getTodos();
    notifyListeners();
  }
}
