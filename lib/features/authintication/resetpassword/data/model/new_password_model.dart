

import 'package:food_tek/features/authintication/resetpassword/domain/entities/new_password_entity.dart';

class NewPasswordModel extends NewPasswordEntity {
  NewPasswordModel({ required super.email, required super.password});

  factory NewPasswordModel.fromJson({required Map<String, dynamic> json}) {
    return NewPasswordModel(
password: json['password'],
      email: json['email'],

    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};

    data['email'] = email;
    data['password'] = password;

    return data;
  }
}
