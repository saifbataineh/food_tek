import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/home/models/food_model.dart';
import 'package:food_tek/features/home/models/recommend_model.dart';
import 'package:food_tek/features/home/views/widgets/fav.dart';
import 'package:food_tek/features/home/views/widgets/recommend_food_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage> {
  String? location = "";
  String selectedCategory = "All";

  List<Food> foodList = [
    Food(
        img: AppImageStrings.chickenBurger,
        name: "Chicken Burger",
        subTitle: "100 gr chicken + tomato + cheese Lettuce",
        price: 20.00),
    Food(
        img: AppImageStrings.cheseBurger,
        name: "Cheese Burger",
        subTitle: "100 gr meat + onion + tomato + Lettuce cheese",
        price: 15.00),
    Food(
        img: AppImageStrings.chickenBurger,
        name: "Cheese Burger",
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
         Row(
                          children: [
                            SizedBox(
                              width: 20,
                              height: 30,
                            ),
                            Text("Top Rated",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                )),
                          ],
                        ),
                        SizedBox(height: responsiveHeight(context, 2),),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foodList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: favScreen(food: foodList[index]),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text(
                "Recommend",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  print("View all clicked");
                },
                child: Row(
                  children: const [
                    Text(
                      "View all",
                      style: TextStyle(color: Colors.green),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.green,
                      size: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recommendList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RecommendFoodScreen(recommend: recommendList[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
