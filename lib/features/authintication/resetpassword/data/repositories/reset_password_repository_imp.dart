

import 'package:food_tek/core/services/jwt_service.dart';
import 'package:food_tek/features/authintication/resetpassword/data/data_source/reset_password_data_source.dart';
import 'package:food_tek/features/authintication/resetpassword/domain/repositories/reset_password_repository.dart';

class ResetPasswordRepositoryImp extends ResetPasswordRepository {
  PostRemoteDataSource postRemoteDataSource;

  ResetPasswordRepositoryImp({required this.postRemoteDataSource});
  
  @override
  Future<Map<String, dynamic>> resetPassword({required Map<String, dynamic> body}) async{
final token =await postRemoteDataSource.resetPassword(body: body);
final decodedToken=JwtService.decodeToken(token);
/* if (decodedToken['role']==4&&decodedToken['isActive']==true) {
  saveAuthsdata
} */

return decodedToken;
  }

  
}
