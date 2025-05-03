
import 'package:food_tek/core/constants/network_consts.dart';
import 'package:food_tek/core/network/api_client.dart';

abstract class ResetPasswordDataSource {
  

  Future<String> resetPassword({required Map<String, dynamic> body});
  Future<String> newPassword({required Map<String, dynamic> body});


}

class PostRemoteDataSource extends ResetPasswordDataSource {
 

  @override
  Future<String> resetPassword({required Map<String, dynamic> body}) async {
    final response = await ApiClient.postData(
      endpoint: NetworkConstants.resetPassword,
      body: body,
      
      fromJsonT: (data) => data['token'],
    );
    return response;
  }

  @override
  Future<String> newPassword({required Map<String, dynamic> body}) async {
    final response = await ApiClient.postData(
      endpoint: NetworkConstants.resetPassword,
      body: body,
      
      fromJsonT: (data) => data['token'],
    );
    return response;
  }
}
