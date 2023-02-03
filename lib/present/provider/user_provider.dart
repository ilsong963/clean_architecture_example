import 'package:clean_architecture/data/model/user_model.dart';
import 'package:clean_architecture/di/di.dart';
import 'package:clean_architecture/domain/usecase/user_usecase.dart';
import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier {
  UserModel? _userModel;
  UserUsecase? userUsecase;

  UserModel? get userModel => _userModel;
  UserProvider({UserUsecase? userUsecase}) {
    this.userUsecase = userUsecase ?? getIt.get<UserUsecase>();
  }

  Future<void> fetchUser(int num) async {
    final user = await userUsecase!.getUser(num);
    _userModel = user;
    notifyListeners();
  }
}
