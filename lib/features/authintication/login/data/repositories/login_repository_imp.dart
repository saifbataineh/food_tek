import 'package:food_tek/core/services/jwt_service.dart';
import 'package:food_tek/features/authintication/login/data/data_source/login_data_source.dart';
import 'package:food_tek/features/authintication/login/domain/entities/login_entity.dart';
import 'package:food_tek/features/authintication/login/domain/repositories/login_repository.dart';

class LoginRepositoryImp extends LoginRepository {
  PostRemoteDataSource postRemoteDataSource;

  LoginRepositoryImp({required this.postRemoteDataSource});
  
  @override
  Future<Map<String, dynamic>> login({required Map<String, dynamic> body}) async{
final token =await postRemoteDataSource.login(body: body);
final decodedToken=JwtService.decodeToken(token);
/* if (decodedToken['role']==4&&decodedToken['isActive']==true) {
  saveAuthsdata
} */

return decodedToken;
  }

  
}
