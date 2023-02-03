import 'package:clean_architecture/domain/entitiy/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entitiy/address_entity.dart';
import '../../domain/entitiy/company_entity.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel extends User with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String username,
    required String email,
    required Address address,
    required String phone,
    required String website,
    required Company company,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'].toString(),
      name: json['name'],
      username: json['username'],
      email: json['email'],
      address: Address.fromJson(json['address']),
      phone: json['phone'],
      website: json['website'],
      company: Company.fromJson(json['company']),
    );
  }
}
