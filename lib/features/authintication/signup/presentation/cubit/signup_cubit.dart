
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/core/use_case/usecase.dart';
import 'package:food_tek/features/authintication/signup/data/model/signup_model.dart';
import 'package:food_tek/features/authintication/signup/domain/use_cases/signup_use_case.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupUseCase signupUseCase;

  SignupCubit({required this.signupUseCase})
    : super(SignupStateIntl());

  signup({required SignupModel signupModel}) async{
    emit(SignupStateLoading());
try {
 final value= await
   signupUseCase
        .call(MapParams(map: signupModel.toJson()));
             //TODO:handle !active more efficent
            
            emit(SignupStateSuccess());

} catch (e) {
    emit(SignupStateError(e.toString()));
}
   
       
       
  }
}
