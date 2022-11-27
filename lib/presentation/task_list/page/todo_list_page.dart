import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos/core/dependency_injection/injection.dart';
import 'package:todos/presentation/task_list/state/todo_list_cubit.dart';
import 'package:todos/presentation/task_list/widgets/todo_list_page_content.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TO-DO list'),
      ),
      body: BlocProvider<TodoListCubit>(
      create: (context) => injector(),
        child: const TodoListPageContent(),
      ),
    );
  }
}
