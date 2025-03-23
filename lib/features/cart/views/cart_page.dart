import 'package:flutter/material.dart';
import 'package:food_tek/core/widgets/current_location_widget.dart';
import 'package:food_tek/features/app/app.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [CurrentLocationWidget()],
      ),
    );
  }
}
