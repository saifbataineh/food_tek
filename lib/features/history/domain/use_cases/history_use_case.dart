
import 'package:food_tek/core/use_case/usecase.dart';

import '../repositories/history_repository.dart';

class HistoryUseCase implements UseCase<String, NoParams> {
  final HistoryRepository repository;

  HistoryUseCase({required this.repository});

  @override
  Future<String> call(noParams) async {
    return await repository.fetchHistory();
  }
}
