import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/model/todo.dart';

part 'remote_todo_list_data_source.g.dart';

@lazySingleton
@RestApi()
abstract class RemoteTodoListDataSource {

  @factoryMethod
  factory RemoteTodoListDataSource(Dio dio) = _RemoteTodoListDataSource;

  @GET("/todos")
  Future<List<Todo>> getTodos();

  @POST("/todos")
  Future<void> addTodo(@Body() Todo todo);

  @DELETE("/todos")
  Future<void> deleteTodo(@Path('todoId') int id);
}