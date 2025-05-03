
import 'package:food_tek/core/constants/network_consts.dart';
import 'package:food_tek/core/network/api_client.dart';

abstract class HistoryDataSource {
  

  Future<dynamic> fetch();


}

class PostRemoteDataSource extends HistoryDataSource {
 

  @override
  Future<dynamic> fetch() async {
    final response = await ApiClient.getDataList(
      endpoint: NetworkConstants.history,
      
      //TODO: change this after knowing what returning from db 
      fromJsonT: (data) => data['token'],
    );
    return response;
  }
}
