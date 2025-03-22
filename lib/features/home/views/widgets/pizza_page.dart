import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/features/favorite/views/widgets/food_favorite_grid_view_widget.dart';
import 'package:food_tek/features/home/models/food_model.dart';

class PizzaPage extends StatelessWidget {
  PizzaPage({super.key});

  List<Food> pizza = [
    Food(
        img: AppImageStrings.pizza1,
        name: "Pepperoni pizza",
        subTitle:
            "Pepperoni pizza, Margarita Pizza Margherita Italian cuisine Tomato",
        price: 29),
    Food(
        img: AppImageStrings.pizza2,
        name: "Pizza Cheese",
        subTitle:
            "Food pizza dish cuisine junk food, Fast Food, Flatbread, Ingredient",
        price: 24),
    Food(
        img: AppImageStrings.pizza3,
        name: "Peppy Paneer",
        subTitle: "Chunky paneer with crisp capsicum and spicy red pepper",
        price: 13),
    Food(
        img: AppImageStrings.pizza4,
        name: "Mexican Green Wave",
        subTitle:
            "A pizza loaded with crunchy onions, crisp capsicum, juicy tomatoes",
        price: 23),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: FoodFavoriteGridViewWidget());
  }
}
