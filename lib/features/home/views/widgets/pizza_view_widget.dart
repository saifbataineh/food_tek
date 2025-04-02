import 'package:flutter/material.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/food_favorite_grid_view_widget.dart';
import 'package:food_tek/food_list.dart';

class PizzaViewWidget extends StatelessWidget {
  const PizzaViewWidget({super.key});

 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      height: responsiveHeight(context, 526),
      width: responsiveWidth(context, 372),
      child: FoodFavoriteGridViewWidget(foodItems: pizzaList),
    ));
  }
}
