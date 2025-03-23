import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/food_favorite_grid_view_widget.dart';
import 'package:food_tek/features/home/models/food_model.dart';

class BurgerViewWidget extends StatelessWidget {
   BurgerViewWidget({super.key});
  final List<Food> burgerList = [
    Food(
      reviews: 120,
      rating: 4.2,
      img: AppImageStrings.burger,
      name: "Classic Beef Burger",
      subTitle: "Juicy beef patty with lettuce, tomato, and special sauce.",
      price: 12.99,
    ),
    Food(
      reviews: 95,
      rating: 4.5,
      img: AppImageStrings.burger,
      name: "Double Cheese Burger",
      subTitle: "Two beef patties with double cheese, pickles, and onions.",
      price: 15.50,
    ),
    Food(
      reviews: 80,
      rating: 3.8,
      img: AppImageStrings.burger,
      name: "Chicken Fillet Burger",
      subTitle: "Crispy fried chicken fillet with mayo and coleslaw.",
      price: 11.75,
    ),
    Food(
      reviews: 110,
      rating: 4.0,
      img: AppImageStrings.burger,
      name: "Veggie Burger",
      subTitle: "Plant-based patty with fresh vegetables and a tangy sauce.",
      price: 10.25,
    ),
    Food(
      reviews: 75,
      rating: 3.9,
      img: AppImageStrings.burger,
      name: "Spicy BBQ Burger",
      subTitle: "Beef patty with BBQ sauce, jalapenos, and cheddar cheese.",
      price: 14.00,
    ),
    Food(
      reviews: 88,
      rating: 4.3,
      img: AppImageStrings.burger,
      name: "Mushroom Swiss Burger",
      subTitle: "Beef patty topped with sautéed mushrooms and Swiss cheese.",
      price: 13.50,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      height: responsiveHeight(context, 526),
      width: responsiveWidth(context, 372),
      child: FoodFavoriteGridViewWidget(foodItems: burgerList),
    ));
  }
}
