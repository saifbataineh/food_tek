


import 'package:food_tek/features/history/domain/entities/history_entity.dart';

class HistoryModel extends HistoryEntity {
  HistoryModel({ required super.email, required super.password});

  factory HistoryModel.fromJson({required Map<String, dynamic> json}) {
    return HistoryModel(
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
