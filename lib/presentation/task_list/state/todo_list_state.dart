part of 'todo_list_cubit.dart';

class TodoListState {}

class TodoListInitialState extends TodoListState {}

class TodoListLoading extends TodoListState {}

class TodoListSuccess extends TodoListState {
  final List<Todo> todoList;

  TodoListSuccess(this.todoList);
}

class TodoListError extends TodoListState {
  final FlutterError error;

  TodoListError(this.error);
}

class TodoListItemChecked extends TodoListState {}
