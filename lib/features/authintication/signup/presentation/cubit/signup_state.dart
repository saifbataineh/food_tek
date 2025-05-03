part of 'signup_cubit.dart';
abstract class SignupState {}

class SignupStateLoading extends SignupState {}

class SignupStateSuccess extends SignupState {


  SignupStateSuccess();
}

class SignupStateError extends SignupState {
  String message;

  SignupStateError(this.message);
}

class SignupStateIntl extends SignupState {}
