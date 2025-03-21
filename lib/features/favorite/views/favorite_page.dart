import 'package:flutter/material.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/current_location_widget.dart';
import 'package:food_tek/core/widgets/food_search_widget.dart';
import 'package:food_tek/features/favorite/views/widgets/food_favorite_grid_view_widget.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsiveWidth(context, 30)),
        child: Column(
          spacing: responsiveHeight(context, 25),
          children: [
            CurrentLocationWidget(),
            FoodSearchWidget(),
            FoodFavoriteGridViewWidget()
          ],
        ),
      ),
    );
  }
}
