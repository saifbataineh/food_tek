

import 'package:food_tek/core/services/jwt_service.dart';
import 'package:food_tek/features/authintication/resetpassword/data/data_source/reset_password_data_source.dart';
import 'package:food_tek/features/authintication/resetpassword/domain/repositories/new_password_repository.dart';

class NewPasswordRepositoryImp extends NewPasswordRepository {
  PostRemoteDataSource postRemoteDataSource;

  NewPasswordRepositoryImp({required this.postRemoteDataSource});
  
  @override
  Future<Map<String, dynamic>> newPassword({required Map<String, dynamic> body}) async{
final token =await postRemoteDataSource.newPassword(body: body);
final decodedToken=JwtService.decodeToken(token);
/* if (decodedToken['role']==4&&decodedToken['isActive']==true) {
  saveAuthsdata
} */

return decodedToken;
  }

  
}
