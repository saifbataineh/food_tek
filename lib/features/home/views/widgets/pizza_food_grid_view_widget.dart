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
    List<Food> pizzaList = [
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
              " Food pizza dish cuisine junk food, Fast Food, Flatbread, Ingredient",
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
              " A pizza loaded with crunchy onions, crisp capsicum, juicy tomatoes",
          price: 23),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: responsiveHeight(context, 6),
      children: [
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
                    foodItem: pizzaList[index],
                  )),
        )
      ],
    );
  }
}
