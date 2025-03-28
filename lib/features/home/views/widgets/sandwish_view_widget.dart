import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/food_favorite_grid_view_widget.dart';
import 'package:food_tek/features/home/models/food_model.dart';
import 'package:food_tek/food_list.dart';

class SandwishViewWidget extends StatelessWidget {
   const SandwishViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  SizedBox(
      height: responsiveHeight(context, 526),
      width: responsiveWidth(context, 372),
      child: FoodFavoriteGridViewWidget(foodItems: sandwichList),
    ));
  }
}
