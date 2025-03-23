import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';

class FoodTabBarWidget extends StatelessWidget {
  const FoodTabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      
      tabAlignment: TabAlignment.start,
      isScrollable: true,
      
      indicatorColor: Colors.green,
      labelColor: Colors.green,
      unselectedLabelColor: Colors.black,
      tabs: [
        Tab(text: "All"),
        Tab(
          child: Row(
            children: [
              Image.asset(
                AppImageStrings.burger,
              ),
              Text("Burger")
            ],
          ),
        ),
        Tab(
          child: Row(
            children: [
              Image.asset(
                AppImageStrings.pizza,
              ),
              Text("pizza")
            ],
          ),
        ),
        Tab(
          child: Row(
            children: [
              Image.asset(
                AppImageStrings.sandwishLogo,
              ),
              Text("sandwesh")
            ],
          ),
        ),
      ],
    );
  }
}
