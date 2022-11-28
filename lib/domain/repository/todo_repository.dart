import 'package:flutter/material.dart';

import '../../domain/model/todo.dart';
import 'package:dartz/dartz.dart';

abstract class TodoRepository {
  Future<Either<FlutterError, List<Todo>>> getAll();

  Future<Either<FlutterError, void>> updateTodo(Todo todo);

  Future<Either<FlutterError, void>> deleteTodo(int id);
}