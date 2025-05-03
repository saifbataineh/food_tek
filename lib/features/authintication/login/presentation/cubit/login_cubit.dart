import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/core/use_case/usecase.dart';
import 'package:food_tek/features/authintication/login/data/model/login_model.dart';
import 'package:food_tek/features/authintication/login/domain/use_cases/login_use_case.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginUseCase loginUseCase;

  LoginCubit({required this.loginUseCase})
    : super(LoginStateIntl());

  login({required LoginModel loginModel}) async{
    emit(LoginStateLoading());
try {
 final value= await
   loginUseCase
        .call(MapParams(map: loginModel.toJson()));
             //TODO:handle !active more efficent
            print(value);
            if (value['role']!="4"||value['IsActive']!="True") {
              throw Exception('you are not authorized to login');
            }
            
            emit(LoginStateSuccess());

} catch (e) {
  print(e.toString());
    emit(LoginStateError(e.toString()));
}
   
       
       
  }
}
