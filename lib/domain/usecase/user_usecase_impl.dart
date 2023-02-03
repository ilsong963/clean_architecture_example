import 'package:clean_architecture/di/di.dart';
import 'package:clean_architecture/domain/repository/user_repository.dart';
import 'package:clean_architecture/domain/usecase/user_usecase.dart';

import '../../data/model/user_model.dart';

class UserUsecaseImpl implements UserUsecase {
  UserRepository? _userRepository;

  UserUsecaseImpl({UserRepository? userRepository}) {
    _userRepository = userRepository ?? getIt.get<UserRepository>();
  }

  @override
  Future<UserModel> getUser(int num) async {
    var a = await _userRepository!.getUser(num);
    return a;
  }
}
