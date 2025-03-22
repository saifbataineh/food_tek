import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/home/models/recommend_model.dart';

class RecommendFoodScreen extends StatelessWidget {
    final RecommendModel recommend;
  const RecommendFoodScreen({super.key  ,required this.recommend});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsiveWidth(context, 72),
      height: responsiveHeight(context, 108),
      child: Stack(
        children: [Image.asset(recommend.image), 
        
        Positioned(
          top: 60,right: 18,
          child: Container(decoration: BoxDecoration(color: Colors.green,
             borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
             bottomLeft: Radius.circular(50))
          ),  child: Text("\$${recommend.price.toString()}")))],
      ),
    );
  }
}
