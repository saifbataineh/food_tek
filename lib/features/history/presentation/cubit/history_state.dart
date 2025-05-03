part of 'history_cubit.dart';
abstract class HistoryState {}

class HistoryStateLoading extends HistoryState {}

class HistoryStateSuccess extends HistoryState {


  HistoryStateSuccess();
}

class HistoryStateError extends HistoryState {
  String message;

  HistoryStateError(this.message);
}

class HistoryStateIntl extends HistoryState {}
