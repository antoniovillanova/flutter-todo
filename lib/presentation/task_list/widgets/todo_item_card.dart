import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos/domain/model/todo.dart';
import 'package:todos/presentation/task_list/state/todo_list_cubit.dart';

class TodoItemCard extends StatelessWidget {
  final Todo todo;

  const TodoItemCard({Key? key, required this.todo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 2.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(todo.title ?? '')),
            Checkbox(
                value: todo.completed ?? false,
                shape: const CircleBorder(),
                onChanged: (value) {
                  context.read<TodoListCubit>().onUpdateTodo(todo);
                }),
          ],
        ),
      ),
    );
  }
}
