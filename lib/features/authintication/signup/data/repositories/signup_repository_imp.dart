



import 'package:food_tek/features/authintication/signup/data/data_source/signup_data_source.dart';
import 'package:food_tek/features/authintication/signup/domain/repositories/signup_repository.dart';

class SignupRepositoryImp extends SignupRepository {
  PostRemoteDataSource postRemoteDataSource;

  SignupRepositoryImp({required this.postRemoteDataSource});
  
  @override
  Future<String> signup({required Map<String, dynamic> body}) async{


return await postRemoteDataSource.signUp(body: body);
  }

  
}
