import 'package:food_tek/features/authintication/login/domain/entities/login_entity.dart';



abstract class NewPasswordRepository {
  Future<Map<String, dynamic>> newPassword({required Map<String, dynamic> body});
}
