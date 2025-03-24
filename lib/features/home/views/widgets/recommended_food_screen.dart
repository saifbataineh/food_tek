import 'package:flutter/material.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/home/models/recommend_model.dart';

class RecommendedFoodScreen extends StatelessWidget {
  final RecommendModel recommend;
  const RecommendedFoodScreen({super.key, required this.recommend});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: responsiveWidth(context, 72),
      height: responsiveHeight(context, 108),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Image.asset(recommend.image),
          Positioned(
              right: 0,
              top: responsiveHeight(context, 72),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50))),
                  child: Text("\$${recommend.price.toString()}")))
        ],
      ),
    );
  }
}
