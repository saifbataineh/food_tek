import 'package:food_tek/features/authintication/login/data/data_source/login_data_source.dart';
import 'package:food_tek/features/authintication/login/domain/entities/login_entity.dart';
import 'package:food_tek/features/authintication/login/domain/repositories/login_repository.dart';

class LoginRepositoryImp extends LoginRepository {
  PostRemoteDataSource postRemoteDataSource;

  LoginRepositoryImp({required this.postRemoteDataSource});
  
  @override
  Future<String> login({required Map<String, dynamic> body}) {
return postRemoteDataSource.login(body: body);
  }

  
}
