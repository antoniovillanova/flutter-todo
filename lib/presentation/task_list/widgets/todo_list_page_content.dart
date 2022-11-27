import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:todos/presentation/task_list/state/todo_list_cubit.dart';
import 'package:todos/presentation/task_list/widgets/todo_item_card.dart';

class TodoListPageContent extends StatelessWidget {
  final int itemCount;

  const TodoListPageContent({
    Key? key,
    required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal:16.0, vertical: 12.0,),
          itemBuilder: (context, index) =>
          TodoItemCard(title: 'Item $index'),
          separatorBuilder: (context, index) => const SizedBox(height: 16.0),
          itemCount: itemCount,
        );
  }
}
