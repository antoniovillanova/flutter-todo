import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todos/data/data_source/remote/remote_todo_list_data_source.dart';
import 'package:todos/domain/model/todo.dart';
import 'package:todos/domain/repository/todo_repository.dart';

@LazySingleton(as: TodoRepository)
class TodoRepositoryImpl implements TodoRepository {
  final RemoteTodoListDataSource _remoteTodoListDataSource;

  TodoRepositoryImpl(this._remoteTodoListDataSource);

  @override
  Future<Either<FlutterError, void>> addTodo(Todo todo) async {
    try{
      return await _remoteTodoListDataSource.addTodo(todo).then((value) => Right(value));
    } catch(e) {
      return Left(FlutterError(e.toString()));
    }
  }

  @override
  Future<Either<FlutterError, void>> deleteTodo(int id) async {
    try {
      return await _remoteTodoListDataSource.deleteTodo(id).then((value) => Right(value));
    } catch(e) {
      return Left(FlutterError(e.toString()));
    }
  }

  @override
  Future<Either<FlutterError, List<Todo>>> getAll() async {
    try {
      return await _remoteTodoListDataSource.getTodos().then((value) => Right(value));
    } catch(e) {
      return Left(FlutterError(e.toString()));
    }
  }

}