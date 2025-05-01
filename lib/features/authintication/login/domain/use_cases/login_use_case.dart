
import 'package:food_tek/core/use_case/usecase.dart';
import 'package:food_tek/features/authintication/login/domain/entities/login_entity.dart';

import '../repositories/login_repository.dart';

class LoginUseCase implements UseCase<String, MapParams> {
  final LoginRepository repository;

  LoginUseCase({required this.repository});

  @override
  Future<String> call(MapParams params) async {
    return await repository.login(body: params.map);
  }
}
