import 'package:clean_architecture/data/data_sorce/http_service.dart';
import 'package:clean_architecture/data/repository/user_repository_impl.dart';
import 'package:clean_architecture/domain/repository/user_repository.dart';
import 'package:clean_architecture/domain/usecase/user_usecase.dart';
import 'package:clean_architecture/domain/usecase/user_usecase_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<HttpService>(() => HttpService());

  getIt.registerLazySingleton<UserRepository>(() => UserRepositoryImpl());

  getIt.registerLazySingleton<UserUsecase>(() => UserUsecaseImpl());
}
