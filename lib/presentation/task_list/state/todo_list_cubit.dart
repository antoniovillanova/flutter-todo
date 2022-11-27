import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/model/todo.dart';
import '../../../domain/use_cases/todo_add_use_case.dart';
import '../../../domain/use_cases/todo_delete_use_case.dart';
import '../../../domain/use_cases/todo_get_all_use_case.dart';

part 'todo_list_state.dart';

@injectable
class TodoListCubit extends Cubit<TodoListState> {
  final TodoGetAllUseCase _todoGetAllUseCase;
  final TodoAddUseCase _todoAddUseCase;
  final TodoDeleteUseCase _todoDeleteUseCase;

  TodoListCubit(
    this._todoGetAllUseCase,
    this._todoAddUseCase,
    this._todoDeleteUseCase,
  ) : super(TodoListInitialState());

  Future<void> getAllTodo() async {
    emit(TodoListLoading());
    final result = await _todoGetAllUseCase.call();
    result.fold(
      (l) => emit(TodoListError(l)),
      (r) => emit(TodoListSuccess(r)),
    );
  }
/*
  Future<void> onDeleteTodo(int todoId) async {
    emit(TodoListLoading());
    final result = await _todoDeleteUseCase.call(todoId);
    result.fold(
          (l) => emit(TodoListError(l)),
          (r) => emit(),
    );
  }

  Future<void> onAddTodo(Todo todo) async {
    emit(TodoListLoading());
    final result = await _todoAddUseCase.call(todo);
    result.fold(
          (l) => emit(TodoListError(l)),
          (r) => emit(),
    );
  }*/
}
