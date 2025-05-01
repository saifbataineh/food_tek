import 'package:food_tek/features/authintication/login/domain/entities/login_entity.dart';

class LoginModel extends LoginEntity {
  LoginModel({ required super.email, required super.password});

  factory LoginModel.fromJson({required Map<String, dynamic> json}) {
    return LoginModel(
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
