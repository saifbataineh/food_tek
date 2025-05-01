import 'package:food_tek/features/authintication/login/domain/entities/login_entity.dart';



abstract class LoginRepository {
  Future<String> login({required Map<String, dynamic> body});
}
