import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_tek/features/home/models/food_model.dart';


part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());
  List<Food> favorites = [];
  addToFavorite(Food favoriteItem) {
    favorites.add(favoriteItem);
    emit(FavoriteAdded());
  }

  removeFromFavorite(Food favoriteItem) {
    //TODO: add id to food;
    favorites.removeWhere((food) => food.name == favoriteItem.name);
    emit(FavoriteRemoved());
  }
}
