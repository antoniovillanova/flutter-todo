import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final injector = GetIt.I;

@InjectableInit()
void configureInjection() => injector.init();