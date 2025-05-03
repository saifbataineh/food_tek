
import 'package:food_tek/core/constants/network_consts.dart';
import 'package:food_tek/core/network/api_client.dart';

abstract class SignupDataSource {
  

  Future<String> signUp({required Map<String, dynamic> body});


}

class PostRemoteDataSource extends SignupDataSource {
 

  @override
  Future<String> signUp({required Map<String, dynamic> body}) async {
    final response = await ApiClient.postData(
      endpoint: NetworkConstants.signUp,
      body: body,
      //TODO: change this after knowing what returning from db 
      fromJsonT: (data) => data['token'],
    );
    return response;
  }
}
