

import '../data_source/history_data_source.dart';

import 'package:food_tek/features/history/domain/repositories/history_repository.dart';

class HistoryRepositoryImp extends HistoryRepository {
  PostRemoteDataSource postRemoteDataSource;

  HistoryRepositoryImp({required this.postRemoteDataSource});
  
  @override
  Future<String> fetchHistory() async{


return await postRemoteDataSource.fetch();
  }
  


  
}
