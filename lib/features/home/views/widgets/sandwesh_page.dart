import 'package:flutter/material.dart';
import 'package:food_tek/features/home/views/widgets/pizza_food_grid_view_widget.dart';

class SandweshPage extends StatelessWidget {
  const SandweshPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: PizzaFoodGridViewWidget());
  }
}
