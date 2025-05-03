import 'package:food_tek/features/authintication/login/domain/entities/login_entity.dart';



abstract class ResetPasswordRepository {
  Future<Map<String, dynamic>> resetPassword({required Map<String, dynamic> body});
}
