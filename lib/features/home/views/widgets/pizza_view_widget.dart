import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/food_favorite_grid_view_widget.dart';
import 'package:food_tek/features/home/models/food_model.dart';

class PizzaViewWidget extends StatelessWidget {
  PizzaViewWidget({super.key});

  final List<Food> pizzaList = [
    Food(
        reviews: 79,
        rating: 3.5,
        img: AppImageStrings.pizza1,
        name: "Pepperoni pizza",
        subTitle:
            "Pepperoni pizza, Margarita Pizza Margherita Italian cuisine Tomato",
        price: 29),
    Food(
        reviews: 79,
        rating: 3.5,
        img: AppImageStrings.pizza2,
        name: "Pizza Cheese",
        subTitle:
            "Food pizza dish cuisine junk food, Fast Food, Flatbread, Ingredient",
        price: 24),
    Food(
        reviews: 79,
        rating: 3.5,
        img: AppImageStrings.pizza3,
        name: "Peppy Paneer",
        subTitle: "Chunky paneer with crisp capsicum and spicy red pepper",
        price: 13),
    Food(
        reviews: 79,
        rating: 3.5,
        img: AppImageStrings.pizza4,
        name: "Mexican Green Wave",
        subTitle:
            "A pizza loaded with crunchy onions, crisp capsicum, juicy tomatoes",
        price: 23),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      height: responsiveHeight(context, 526),
      width: responsiveWidth(context, 372),
      child: FoodFavoriteGridViewWidget(foodItems: pizzaList, onFavoriteChanged: (int index, bool isLiked) {  },),
    ));
  }
}
