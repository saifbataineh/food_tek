import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/food_favorite_grid_view_widget.dart';
import 'package:food_tek/features/home/models/food_model.dart';

class SandwishViewWidget extends StatelessWidget {
   SandwishViewWidget({super.key});
final List<Food> sandwichList = [
  Food(
    reviews: 65,
    rating: 4.1,
    img: AppImageStrings.sandwish,
    name: "Classic Club Sandwich",
    subTitle: "Triple-decker with chicken, bacon, lettuce, tomato, and mayo.",
    price: 8.99,
  ),
  Food(
    reviews: 78,
    rating: 4.4,
    img: AppImageStrings.sandwish,
    name: "Tuna Salad Sandwich",
    subTitle: "Creamy tuna salad with celery and onion on whole wheat.",
    price: 7.50,
  ),
  Food(
    reviews: 55,
    rating: 3.7,
    img: AppImageStrings.sandwish,
    name: "Grilled Chicken Panini",
    subTitle: "Grilled chicken breast with pesto, mozzarella, and sun-dried tomatoes.",
    price: 9.25,
  ),
  Food(
    reviews: 90,
    rating: 4.6,
    img: AppImageStrings.sandwish,
    name: "Roast Beef Sub",
    subTitle: "Sliced roast beef with provolone, lettuce, tomato, and horseradish mayo.",
    price: 10.50,
  ),
  Food(
    reviews: 60,
    rating: 3.9,
    img: AppImageStrings.sandwish,
    name: "Turkey and Swiss",
    subTitle: "Sliced turkey breast with Swiss cheese, lettuce, and mustard.",
    price: 8.00,
  ),
   Food(
    reviews: 70,
    rating: 4.2,
    img: AppImageStrings.sandwish,
    name: "Italian Hero",
    subTitle: "Genoa salami, ham, provolone, onions, peppers, and vinaigrette.",
    price: 9.75,
  ),
];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  SizedBox(
      height: responsiveHeight(context, 526),
      width: responsiveWidth(context, 372),
      child: FoodFavoriteGridViewWidget(foodItems: sandwichList, onFavoriteChanged: (int index, bool isLiked) {  },),
    ));
  }
}
