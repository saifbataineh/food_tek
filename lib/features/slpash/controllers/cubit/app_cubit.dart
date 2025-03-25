import 'package:bloc/bloc.dart';
import 'package:food_tek/core/services/shared_preferance_service.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  Future<void> checkIsFirstTime() async {
    final notFirstTime = await SharedPreferanceService.isFirstTime();
    if (notFirstTime) {
      emit(UserNotFirstTimeState());
    } else {
      emit(UserFirstTimeState());
    }
  }
}
