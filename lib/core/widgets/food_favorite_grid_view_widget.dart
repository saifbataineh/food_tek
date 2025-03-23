import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/single_food_item_grid_tile_widget.dart';
import 'package:food_tek/features/home/models/food_model.dart';

class FoodFavoriteGridViewWidget extends StatelessWidget {
  const FoodFavoriteGridViewWidget({super.key, required this.foodItems});
  final List<Food> foodItems;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveHeight(context, 526),
      width: responsiveWidth(context, 372),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: responsiveWidth(context, 12),
              mainAxisSpacing: responsiveHeight(context, 22),
              crossAxisCount: 2,
              mainAxisExtent: responsiveHeight(context, 252)),
          itemCount: foodItems.length,
          itemBuilder: (context, index) =>
              SingleFoodItemGridTileWidget(foodItem: foodItems[index])),
    );
  }
}
