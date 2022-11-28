import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:todos/domain/repository/todo_repository.dart';

import '../model/todo.dart';

@injectable
class TodoAddUseCase {
  final TodoRepository _repository;

  TodoAddUseCase(this._repository);

  Future<Either<FlutterError, void>> call(Todo todo) async {
    return _repository.addTodo(todo);
  }
}