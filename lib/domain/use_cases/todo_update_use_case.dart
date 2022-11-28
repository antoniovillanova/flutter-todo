import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:todos/domain/model/todo.dart';
import 'package:todos/domain/repository/todo_repository.dart';

@injectable
class TodoUpdateUseCase {
  final TodoRepository _repository;

  TodoUpdateUseCase(this._repository);

  Future<Either<FlutterError, void>> call(Todo todo) async {
    return _repository.updateTodo(todo);
  }
}