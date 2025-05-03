
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/core/use_case/usecase.dart';
import 'package:food_tek/features/authintication/signup/domain/use_cases/signup_use_case.dart';
import 'package:food_tek/features/history/data/model/history_model.dart';
import 'package:food_tek/features/history/domain/use_cases/history_use_case.dart';

part 'history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryUseCase historyUseCase;

  HistoryCubit({required this.historyUseCase})
    : super(HistoryStateIntl());

  history({required HistoryModel historyModel}) async{
    emit(HistoryStateLoading());
try {
 final value= await
   historyUseCase
        .call(NoParams());
             //TODO:handle !active more efficent
            
            emit(HistoryStateSuccess());

} catch (e) {
    emit(HistoryStateError(e.toString()));
}
   
       
       
  }
}
