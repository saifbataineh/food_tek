part of 'new_password_cubit.dart';
abstract class NewPasswordState {}

class NewPasswordStateLoading extends NewPasswordState {}

class NewPasswordStateSuccess extends NewPasswordState {


  NewPasswordStateSuccess();
}

class NewPasswordStateError extends NewPasswordState {
  String message;

  NewPasswordStateError(this.message);
}

class NewPasswordStateIntl extends NewPasswordState {}
