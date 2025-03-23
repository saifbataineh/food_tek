import 'package:flutter/material.dart';
import 'package:food_tek/features/home/views/widgets/pizza_food_grid_view_widget.dart';

class BurgerPag extends StatelessWidget {
  const BurgerPag({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: PizzaFoodGridViewWidget());
  }
}