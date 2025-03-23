import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/current_location_widget.dart';
import 'package:food_tek/core/widgets/food_search_widget.dart';
import 'package:food_tek/features/home/models/food_model.dart';
import 'package:food_tek/features/home/models/recommend_model.dart';
import 'package:food_tek/features/home/views/widgets/burger_view_widget.dart';
import 'package:food_tek/features/home/views/widgets/food_tab_bar_widget.dart';
import 'package:food_tek/features/home/views/widgets/pizza_view_widget.dart';
import 'package:food_tek/features/home/views/widgets/sandwish_view_widget.dart';
import 'package:food_tek/features/home/views/widgets/all_view_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String? location = "";
  String selectedCategory = "All";

  List<Food> foodList = [
    Food(
        reviews: 111,
        rating: 5,
        img: AppImageStrings.chickenBurger,
        name: "chicken Burger",
        subTitle: "100 gr chicken + tomato + cheese Lettuce",
        price: 20.00),
    Food(
        reviews: 0,
        rating: 0,
        img: AppImageStrings.cheseBurger,
        name: "chese Burger",
        subTitle: "100 gr meat + onion + tomato + Lettuce cheese",
        price: 15.00),
    Food(
        reviews: 200,
        rating: 4.5,
        img: AppImageStrings.burger,
        name: "chese Burger",
        subTitle: "100 gr meat + onion + tomato + Lettuce cheese",
        price: 15.00),
  ];

  List<RecommendModel> recommendList = [
    RecommendModel(image: AppImageStrings.recommend1, price: 14),
    RecommendModel(image: AppImageStrings.recommend2, price: 14),
    RecommendModel(image: AppImageStrings.recommend3, price: 14),
    RecommendModel(image: AppImageStrings.recommend4, price: 14)
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: responsiveWidth(context, 30)),
              child: Column(
                spacing: responsiveHeight(context, 25),
                children: [
                  CurrentLocationWidget(),
                  FoodSearchWidget(),
                  FoodTabBarWidget(),
                  SizedBox(
                    height: responsiveHeight(context, 526),
                    child: TabBarView(
                      children: [
                        const AllViewWidget(),
                        BurgerViewWidget(),
                        PizzaViewWidget(),
                        SandwishViewWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
