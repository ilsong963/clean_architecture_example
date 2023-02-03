import 'package:clean_architecture/di/di.dart';
import 'package:clean_architecture/domain/repository/user_repository.dart';

import '../data_sorce/http_service.dart';
import '../model/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  HttpService? _httpService;

  UserRepositoryImpl({HttpService? httpService}) {
    _httpService = httpService ?? getIt.get<HttpService>();
  }

  @override
  Future<UserModel> getUser(int num) async {
    final user = await _httpService!.getUser(num);
    return user;
  }
}
