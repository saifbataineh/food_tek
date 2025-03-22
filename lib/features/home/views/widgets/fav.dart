import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/home/models/food_model.dart';
import 'package:intl/intl.dart';

class favScreen extends StatelessWidget {
  final Food food;

  const favScreen({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsiveWidth(context, 155),
      height: responsiveHeight(context, 209),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(Icons.star, color: Colors.amber),
              ),
            ],
          ),
          Image.asset(food.img),
          SizedBox(height: 8),
          Text(
            textAlign: TextAlign.justify,
            food.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              food.subTitle,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "\$${formatPrice(food.price).split('.')[0]}",  
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColors.mainColor,  
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ".${formatPrice(food.price).split('.')[1]}",  
                        style: TextStyle(
                           fontSize: 14,
                          color: AppColors.mainColor,  
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String formatPrice(double price) {
     var formatter = NumberFormat('###0.00', 'en_US');
    return formatter.format(price);
  }
}
