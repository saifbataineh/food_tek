import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/home/models/food_model.dart';
import 'package:food_tek/features/home/models/recommend_model.dart';
import 'package:food_tek/features/home/views/widgets/top_rated_widget.dart';
import 'package:food_tek/features/home/views/widgets/recommended_food_screen.dart';

class AllViewWidget extends StatefulWidget {
  const AllViewWidget({super.key});

  @override
  State<AllViewWidget> createState() => _AllViewWidgetState();
}

class _AllViewWidgetState extends State<AllViewWidget> {
  String? location = "";
  String selectedCategory = "All";
    int currentIndex = 0;

  List<Food> foodList = [
    Food(
        reviews: 79,
        rating: 3.5,
        img: AppImageStrings.chickenBurger,
        name: "Chicken Burger",
        subTitle: "100 gr chicken + tomato + cheese Lettuce",
        price: 20.00),
    Food(
        reviews: 79,
        rating: 3.5,
        img: AppImageStrings.cheseBurger,
        name: "Cheese Burger",
        subTitle: "100 gr meat + onion + tomato + Lettuce cheese",
        price: 15.00),
    Food(
        reviews: 79,
        rating: 3.5,
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

  List pageViewDiscount = [
    Image.asset(AppImageStrings.discountPhoto),
    Image.asset(AppImageStrings.discountPhoto),
    Image.asset(AppImageStrings.discountPhoto),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: responsiveWidth(context, 370), // Make responsive
              height: responsiveHeight(context, 128),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    width: responsiveWidth(context, 370),
                    height: responsiveHeight(context, 137),
                    color: Colors.transparent,
                    child: pageViewDiscount[index],
                  );
                },
                itemCount: pageViewDiscount.length,
              )),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,children: List.generate(pageViewDiscount.length, (index)=>Container(
                              margin: EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              color: index == currentIndex
                                  ? AppColors.mainColor
                                  : AppColors.lightgreyColor,
                              shape: BoxShape.circle,
                            ),
                            height: responsiveHeight(context, 10),
                            width: responsiveWidth(context, 10),
              )),),
          SizedBox(
            height: responsiveHeight(context, 5),
          ),
          Text("Top Rated", style: Theme.of(context).textTheme.displayMedium),
          SizedBox(
            height: responsiveHeight(context, 13),
          ),
          SizedBox(
            height: responsiveHeight(context, 220),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TopRatedWidget(foodItem: foodList[index]),
                );
              },
            ),
          ),
          SizedBox(height: responsiveHeight(context, 15)),
          Row(
            children: [
              Text("Recommend",
                  style: Theme.of(context).textTheme.displayMedium),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  print("View all clicked");
                },
                child: Row(
                  children: [
                    Text(
                      "View all",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(
                      width: responsiveWidth(context, 13),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.mainColor,
                      size: 13,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: responsiveHeight(context, 11),
          ),
          SizedBox(
            height: responsiveHeight(context, 108),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: RecommendedFoodScreen(recommend: recommendList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
