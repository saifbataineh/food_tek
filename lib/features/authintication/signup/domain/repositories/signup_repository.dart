import 'package:food_tek/features/authintication/login/domain/entities/login_entity.dart';



abstract class SignupRepository {
  Future<String> signup({required Map<String, dynamic> body});
}
