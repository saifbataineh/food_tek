
import 'package:food_tek/core/use_case/usecase.dart';

import '../repositories/signup_repository.dart';

class SignupUseCase implements UseCase<String, MapParams> {
  final SignupRepository repository;

  SignupUseCase({required this.repository});

  @override
  Future<String> call(MapParams params) async {
    return await repository.signup(body: params.map);
  }
}
