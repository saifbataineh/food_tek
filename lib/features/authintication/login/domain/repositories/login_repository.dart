import 'package:food_tek/features/authintication/login/domain/entities/login_entity.dart';



abstract class LoginRepository {
  Future<Map<String, dynamic>> login({required Map<String, dynamic> body});
}
