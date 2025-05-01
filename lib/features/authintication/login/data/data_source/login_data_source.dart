import 'package:food_tek/core/constants/network_consts.dart';
import 'package:food_tek/core/network/api_client.dart';
import 'package:food_tek/features/authintication/login/domain/entities/login_entity.dart';

import '../model/login_model.dart';

abstract class LoginDataSource {
  

  Future<String> login({required Map<String, dynamic> body});


}

class PostRemoteDataSource extends LoginDataSource {
 

  @override
  Future<String> login({required Map<String, dynamic> body}) async {
    final response = await ApiClient.postData(
      endpoint: NetworkConstants.login,
      body: body,
      
      fromJsonT: (data) => "saif",
    );
    return response;
  }
}
