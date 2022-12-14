// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:todos/core/dependency_injection/injection.dart' as _i11;
import 'package:todos/data/data_source/remote/remote_todo_list_data_source.dart'
    as _i4;
import 'package:todos/data/repository/todo_repository_impl.dart' as _i6;
import 'package:todos/domain/repository/todo_repository.dart' as _i5;
import 'package:todos/domain/use_cases/todo_delete_use_case.dart' as _i8;
import 'package:todos/domain/use_cases/todo_get_all_use_case.dart' as _i9;
import 'package:todos/domain/use_cases/todo_update_use_case.dart' as _i7;
import 'package:todos/presentation/task_list/state/todo_list_cubit.dart'
    as _i10;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final externalPackages = _$ExternalPackages();
    gh.lazySingleton<_i3.Dio>(() => externalPackages.dio);
    gh.lazySingleton<_i4.RemoteTodoListDataSource>(
        () => _i4.RemoteTodoListDataSource(gh<_i3.Dio>()));
    gh.lazySingleton<_i5.TodoRepository>(
        () => _i6.TodoRepositoryImpl(gh<_i4.RemoteTodoListDataSource>()));
    gh.factory<_i7.TodoUpdateUseCase>(
        () => _i7.TodoUpdateUseCase(gh<_i5.TodoRepository>()));
    gh.factory<_i8.TodoDeleteUseCase>(
        () => _i8.TodoDeleteUseCase(gh<_i5.TodoRepository>()));
    gh.factory<_i9.TodoGetAllUseCase>(
        () => _i9.TodoGetAllUseCase(gh<_i5.TodoRepository>()));
    gh.factory<_i10.TodoListCubit>(() => _i10.TodoListCubit(
          gh<_i9.TodoGetAllUseCase>(),
          gh<_i7.TodoUpdateUseCase>(),
          gh<_i8.TodoDeleteUseCase>(),
        ));
    return this;
  }
}

class _$ExternalPackages extends _i11.ExternalPackages {}
