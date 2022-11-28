import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:todos/presentation/task_list/state/todo_list_cubit.dart';
import 'package:todos/presentation/task_list/widgets/todo_item_card.dart';

class TodoListPageContent extends StatelessWidget {
  const TodoListPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoListCubit, TodoListState>(
      listener: (context, state) {
        if (state is TodoListError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error.message),
              action: SnackBarAction(
                  label: 'Try again',
                  onPressed: () => context.read<TodoListCubit>().getAllTodo()),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is TodoListLoading) {
          return const SpinKitChasingDots(
            color: Colors.blue,
            duration: Duration(seconds: 2),
          );
        }
        if (state is TodoListSuccess) {
          return ListView.separated(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            itemBuilder: (context, index) =>
                TodoItemCard(todo: state.todoList[index]),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10.0,
            ),
            itemCount: state.todoList.length,
          );
        }
        return Container();
      },
    );
  }
}
