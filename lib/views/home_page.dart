import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:playground/controllers/home_controller.dart';

import '../services/dio_client.dart';
import '../services/json_placeholder_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();

  @override
  void initState() {
    super.initState();
    controller.fetchAllTodos();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('HomePage')),
        body: AnimatedBuilder(
          animation: controller,
          builder: (context, widget) {
            return ListView.builder(
                itemCount: controller.todos.length,
                itemBuilder: (context, index) {
                  final todo = controller.todos[index];
                  return ListTile(
                    title: Text(todo.title),
                  );
                });
          },
        ));
  }
}
