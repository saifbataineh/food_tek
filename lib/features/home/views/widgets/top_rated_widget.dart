import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/home/models/food_model.dart';
import 'package:intl/intl.dart';

class TopRatedWidget extends StatelessWidget {
  final Food foodItem;
  const TopRatedWidget({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsiveWidth(context, 155),
      height: responsiveHeight(context, 230),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsiveWidth(context, 12)),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.star, color: AppColors.gold),
                Text("${foodItem.rating}")
              ],
            ),
            Image.asset(
              foodItem.img,
              width: responsiveWidth(context, 87),
              height: responsiveHeight(context, 70),
            ),
            SizedBox(height: responsiveHeight(context, 8)),
            Text(
                textAlign: TextAlign.justify,
                foodItem.name,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 16, letterSpacing: -1)),
            SizedBox(height: responsiveHeight(context, 8)),
            Text(foodItem.subTitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: AppColors.greyColor)),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${foodItem.price}",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  width: responsiveWidth(context, 30),
                  height: responsiveHeight(context, 30),
                  child: IconButton(
                    style: IconButton.styleFrom(
                        backgroundColor: AppColors.mainColor,
                        padding: EdgeInsets.only()),
                    onPressed: () {},
                    icon: Icon(
                      color: Colors.white,
                      Icons.add,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
