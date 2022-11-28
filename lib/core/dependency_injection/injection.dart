import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final injector = GetIt.I;

@InjectableInit()
void configureInjection() => injector.init();

@module
abstract class ExternalPackages {
  @lazySingleton
  Dio get dio => Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

}
