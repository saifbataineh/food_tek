part of 'login_cubit.dart';
abstract class LoginState {}

class LoginStateLoading extends LoginState {}

class LoginStateSuccess extends LoginState {


  LoginStateSuccess();
}

class LoginStateError extends LoginState {
  String message;

  LoginStateError(this.message);
}

class LoginStateIntl extends LoginState {}
