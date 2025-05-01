import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/core/use_case/usecase.dart';
import 'package:food_tek/features/authintication/login/data/model/login_model.dart';
import 'package:food_tek/features/authintication/login/domain/use_cases/login_use_case.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginUseCase loginUseCase;

  LoginCubit({required this.loginUseCase})
    : super(LoginStateIntl());

  login({required LoginModel loginModel}) {
    emit(LoginStateLoading());

    loginUseCase
        .call(MapParams(map: loginModel.toJson()))
        .then(
          (value) {
            emit(LoginStateSuccess());
          },
          onError: (error) {
            emit(LoginStateError(error.toString()));
          },
        );
  }
}
