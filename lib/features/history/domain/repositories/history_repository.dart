import 'package:food_tek/features/authintication/login/domain/entities/login_entity.dart';



abstract class HistoryRepository {
  Future<String> fetchHistory();
}
