import 'package:flutter/material.dart';
import 'package:food_tek/features/home/models/food_model.dart';

class favScreen extends StatelessWidget {
    final Food food;

  const favScreen({super.key,  required this.food});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.amber,
      child: Column(
        children: [
          Image.asset(food.img),
          Text(food.name),
          Text(food.subTitle),
          Text(food.price.toString())
        ],
      ),
    );
  }
}
