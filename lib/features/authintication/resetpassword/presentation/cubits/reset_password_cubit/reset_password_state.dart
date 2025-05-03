part of 'reset_password_cubit.dart';
abstract class ResetPasswordState {}

class ResetPasswordStateLoading extends ResetPasswordState {}

class ResetPasswordStateSuccess extends ResetPasswordState {


  ResetPasswordStateSuccess();
}

class ResetPasswordStateError extends ResetPasswordState {
  String message;

  ResetPasswordStateError(this.message);
}

class ResetPasswordStateIntl extends ResetPasswordState {}
