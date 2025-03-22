import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/favorite/views/widgets/single_item_grid_tile_widget.dart';
import 'package:food_tek/features/home/models/food_model.dart';

class FoodFavoriteGridViewWidget extends StatelessWidget {
  const FoodFavoriteGridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: responsiveHeight(context, 6),
      children: [
        Text(
          "favorites",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.redyBlack),
        ),
        SizedBox(
          height: responsiveHeight(context, 526),
          width: responsiveWidth(context, 372),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: responsiveWidth(context, 12),
                  mainAxisSpacing: responsiveHeight(context, 22),
                  crossAxisCount: 2,
                  mainAxisExtent: responsiveHeight(context, 252)),
              itemCount: 6,
              itemBuilder: (context, index) => SignleItemGridTileWidget(
                    foodItem: Food(
                        oldPrice: 9.5,
                        reviews: 79,
                        rating: 3.5,
                        img: AppImageStrings.pepproniPizza,
                        name: "Pepperoni pizza",
                        subTitle:
                            "Pepperoni pizza, Margarita Pizza Margherita Italian cuisine Tomato",
                        price: 20),
                  )),
        )
      ],
    );
  }
}
