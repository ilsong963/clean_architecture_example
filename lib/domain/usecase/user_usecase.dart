import 'package:clean_architecture/data/model/user_model.dart';

abstract class UserUsecase {
  Future<UserModel> getUser(int num);
}
