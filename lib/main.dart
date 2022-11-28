import 'package:flutter/material.dart';
import 'package:todos/core/dependency_injection/injection.dart';
import 'package:todos/presentation/task_list/page/todo_list_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TodoListPage(),
    );
  }
}
