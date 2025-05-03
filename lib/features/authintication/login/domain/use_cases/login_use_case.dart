
import 'package:food_tek/core/use_case/usecase.dart';

import '../repositories/login_repository.dart';

class LoginUseCase implements UseCase<Map<String, dynamic>, MapParams> {
  final LoginRepository repository;

  LoginUseCase({required this.repository});

  @override
  Future<Map<String, dynamic>> call(MapParams params) async {
    return await repository.login(body: params.map);
  }
}
