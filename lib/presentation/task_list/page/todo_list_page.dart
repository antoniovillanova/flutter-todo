import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = 2;
    return Scaffold(
      appBar: AppBar(
        title: const Text('TO-DO list'),
      ),
      body: Scaffold()
    );
  }
}
