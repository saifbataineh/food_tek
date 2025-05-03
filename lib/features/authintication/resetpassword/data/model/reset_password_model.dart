
import 'package:food_tek/features/authintication/resetpassword/domain/entities/reset_password_entity.dart';

class ResetPasswordModel extends ResetPasswordEntity {
  ResetPasswordModel({ required super.email, required super.password});

  factory ResetPasswordModel.fromJson({required Map<String, dynamic> json}) {
    return ResetPasswordModel(
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
