
import 'package:food_tek/core/use_case/usecase.dart';

import '../repositories/reset_password_repository.dart';

class ResetPasswordUseCase implements UseCase<Map<String, dynamic>, MapParams> {
  final ResetPasswordRepository repository;

  ResetPasswordUseCase({required this.repository});

  @override
  Future<Map<String, dynamic>> call(MapParams params) async {
    return await repository.resetPassword(body: params.map);
  }
}
