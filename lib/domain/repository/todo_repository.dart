import 'package:flutter/material.dart';

import '../model/todo.dart';
import 'package:dartz/dartz.dart';

abstract class TodoRepository {
  Future<Either<FlutterError, List<Todo>>> getAll();

  Future<Either<FlutterError, void>> addTodo(Todo todo);

  Future<Either<FlutterError, void>> deleteTodo(int id);
}