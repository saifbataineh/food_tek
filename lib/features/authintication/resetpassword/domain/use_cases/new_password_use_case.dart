
import 'package:food_tek/core/use_case/usecase.dart';
import 'package:food_tek/features/authintication/resetpassword/domain/repositories/new_password_repository.dart';


class NewPasswordUseCase implements UseCase<Map<String, dynamic>, MapParams> {
  final NewPasswordRepository repository;

  NewPasswordUseCase({required this.repository});

  @override
  Future<Map<String, dynamic>> call(MapParams params) async {
    return await repository.newPassword(body: params.map);
  }
}
