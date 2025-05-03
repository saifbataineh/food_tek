import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/core/use_case/usecase.dart';
import 'package:food_tek/features/authintication/resetpassword/data/model/new_password_model.dart';
import 'package:food_tek/features/authintication/resetpassword/domain/use_cases/new_password_use_case.dart';


part 'new_password_state.dart';

class NewPasswordCubit extends Cubit<NewPasswordState> {
  NewPasswordUseCase newPasswordUseCase;

  NewPasswordCubit({required this.newPasswordUseCase})
      : super(NewPasswordStateIntl());

  setNewPassword({required NewPasswordModel newPasswordModel}) async {
    emit(NewPasswordStateLoading());
    try {
      final value = await newPasswordUseCase
          .call(MapParams(map: newPasswordModel.toJson()));
      //TODO:handle !active more efficent
      print(value);
      if (value['role'] != "4" || value['IsActive'] != "True") {
        throw Exception('you are not authorized to login');
      }

      emit(NewPasswordStateSuccess());
    } catch (e) {
      print(e.toString());
      emit(NewPasswordStateError(e.toString()));
    }
  }
}
