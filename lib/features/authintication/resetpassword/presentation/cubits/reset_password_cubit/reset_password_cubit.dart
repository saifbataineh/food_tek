import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/core/use_case/usecase.dart';
import 'package:food_tek/features/authintication/resetpassword/data/model/new_password_model.dart';
import 'package:food_tek/features/authintication/resetpassword/data/model/reset_password_model.dart';
import 'package:food_tek/features/authintication/resetpassword/domain/use_cases/reset_password_use_case.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordUseCase resetPasswordUseCase;

  ResetPasswordCubit({required this.resetPasswordUseCase})
      : super(ResetPasswordStateIntl());

  resetPassword({required ResetPasswordModel resetPasswordModel}) async {
    emit(ResetPasswordStateLoading());
    try {
      final value = await resetPasswordUseCase
          .call(MapParams(map: resetPasswordModel.toJson()));
      //TODO:handle !active more efficent
      print(value);
      if (value['role'] != "4" || value['IsActive'] != "True") {
        throw Exception('you are not authorized to login');
      }

      emit(ResetPasswordStateSuccess());
    } catch (e) {
      print(e.toString());
      emit(ResetPasswordStateError(e.toString()));
    }
  }
}
