import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/current_location_widget.dart';
import 'package:food_tek/core/widgets/food_search_widget.dart';
import 'package:food_tek/features/app/app.dart';
import 'package:food_tek/features/food_details/views/widgets/add_quantity_widget.dart';
import 'package:food_tek/features/food_details/views/widgets/hot_slider_bar_widget.dart';
import 'package:food_tek/features/home/models/food_model.dart';

class FoodDetaialsPage extends StatelessWidget {
  const FoodDetaialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final foodItem = ModalRoute.of(context)!.settings.arguments as Food;
    double rating = foodItem.rating + 1;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: responsiveWidth(context, 30)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: responsiveHeight(context, 25),
              children: [
                CurrentLocationWidget(),
                FoodSearchWidget(),
                Container(
                    width: responsiveWidth(context, 370),
                    height: responsiveHeight(context, 203),
                    padding: EdgeInsets.symmetric(
                        vertical: responsiveHeight(context, 25)),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            AppImageStrings.foodItemDetailsBackground),
                      ),
                    ),
                    child: Image.asset(
                      foodItem.img,
                      fit: BoxFit.contain,
                    )),

                Text(
                  foodItem.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Row(
                  children: [
                    ...List<Widget>.generate(
                      5,
                      (index) {
                        --rating;
                        return Icon(
                          rating >= 1
                              ? Icons.star
                              : rating == 0.5
                                  ? Icons.star_half
                                  : Icons.star_border,
                          color: AppColors.gold,
                        );
                      },
                    ),
                    Text(
                      " ${foodItem.rating} ",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              color: AppColors.mediumlightgreyColor,
                              fontWeight: FontWeight.w400),
                    ),
                    Text(
                      " (${foodItem.reviews} reviews)",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              color: AppColors.mediumlightgreyColor,
                              fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                //price
                Row(
                  children: [
                    Text(
                      "\$ ${foodItem.price} ",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: AppColors.mainColor),
                    ),
                    if (foodItem.oldPrice != null)
                      Text(
                        "\$ ${foodItem.oldPrice} ",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: AppColors.mediumlightgreyColor,
                                decoration: TextDecoration.lineThrough),
                      ),
                  ],
                ),
                Text(
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.mediumlightgreyColor),
                    "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum."),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HotSliderBarWidget(),
                    AddQuantityWidget(),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(
                        right: responsiveWidth(context, 20),
                        left: responsiveWidth(context, 20),
                        bottom: responsiveHeight(context, 25)),
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Add to Cart")))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
