import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:todos/domain/repository/todo_repository.dart';

import '../model/todo.dart';

@lazySingleton
class TodoGetAllUseCase {
  final TodoRepository _repository;

  TodoGetAllUseCase(this._repository);

  Future<Either<FlutterError, List<Todo>>> call() async {
    return _repository.getAll();
  }
}