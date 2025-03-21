import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/favorite/views/widgets/favorite_button_widget.dart';
import 'package:food_tek/features/home/models/food_model.dart';

class SignleItemGridTileWidget extends StatelessWidget {
  const SignleItemGridTileWidget({
    required this.foodItem,
    super.key,
  });
  final Food foodItem;
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Stack(
        children: [
          Positioned(
            bottom: responsiveHeight(context, 13.5),
            child: Container(
              height: responsiveHeight(context, 200),
              width: responsiveWidth(context, 174),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: AppColors.seconadryColor),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Column(
                  spacing: responsiveHeight(context, 5),
                  children: [
                    SizedBox(
                      height: responsiveHeight(context, 58),
                    ),
                    Text(
                      foodItem.name,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Icon(
                            Icons.lightbulb,
                            color: Colors.yellow,
                            size: 10,
                          ),
                          Expanded(
                            child: Text(
                              foodItem.subTitle,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w300),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '\$${foodItem.price.toString()}',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: responsiveWidth(context, 42),
            child: Image.asset(AppImageStrings.plate),
          ),
          Positioned(
            right: responsiveWidth(context, 51),
            top: responsiveHeight(context, 7),
            child: Image.asset(foodItem.img),
          ),
          Positioned(
            right: 0,
            child: Container(
              height: responsiveHeight(context, 35),
              width: responsiveWidth(context, 35),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.seconadryColor),
              child: FavoriteButtonWidget(),
            ),
          ),
          Positioned(
            bottom: 0,
            left: responsiveWidth(context, 40),
            child: SizedBox(
              height: responsiveHeight(context, 27),
              width: responsiveWidth(context, 95),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0)),
                child: Text(
                  "Order Now",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
