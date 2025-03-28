part of 'favorite_cubit.dart';

@immutable
sealed class FavoriteState {}

final class FavoriteInitial extends FavoriteState {}
final class FavoriteAdded extends FavoriteState {}
final class FavoriteRemoved extends FavoriteState {}
