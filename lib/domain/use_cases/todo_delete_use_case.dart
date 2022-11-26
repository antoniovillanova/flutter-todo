import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:todos/domain/repository/todo_repository.dart';

@lazySingleton
class TodoDeleteUseCase {
  final TodoRepository _repository;

  TodoDeleteUseCase(this._repository);

  Future<Either<FlutterError, void>> call(int id) async {
    return _repository.deleteTodo(id);
  }
}