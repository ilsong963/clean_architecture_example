import 'package:clean_architecture/data/model/user_model.dart';
import 'package:dio/dio.dart';

class HttpService {
  Future getUser(int num) async {
    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/users/$num');
      return UserModel.fromJson(response.data);
    } catch (e) {
      return e;
    }
  }
}
