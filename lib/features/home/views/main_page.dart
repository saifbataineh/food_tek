import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/current_location_widget.dart';
import 'package:food_tek/core/widgets/food_search_widget.dart';
import 'package:food_tek/features/home/models/food_model.dart';
import 'package:food_tek/features/home/models/recommend_model.dart';
import 'package:food_tek/features/home/views/widgets/burger_pag.dart';
import 'package:food_tek/features/home/views/widgets/pizza_page.dart';
import 'package:food_tek/features/home/views/widgets/sandwesh_page.dart';
import 'package:food_tek/features/home/views/widgets/home_page.dart';

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
        img: AppImageStrings.chickenBurger,
        name: "chicken Burger",
        subTitle: "100 gr chicken + tomato + cheese Lettuce",
        price: 20.00),
    Food(
        img: AppImageStrings.cheseBurger,
        name: "chese Burger",
        subTitle: "100 gr meat + onion + tomato + Lettuce cheese",
        price: 15.00),
    Food(
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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: AppBar(
            backgroundColor: Colors.white,
           
            elevation: 0,
            flexibleSpace: Padding(
              padding: EdgeInsets.symmetric(horizontal: responsiveWidth(context, 30)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CurrentLocationWidget(),
                  SizedBox(height: 5),
                  FoodSearchWidget(),
                  SizedBox(height: 40)
                ],

              ),
            ),
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.green,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.black,
              tabs: [
                _buildTab("All", null),
                _buildTab("Burger", AppImageStrings.burger),
                _buildTab("Pizza", AppImageStrings.pizza),
                _buildTab("Sandwich", AppImageStrings.sandwsh),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            HomePage(),
            const BurgerPag(),
             PizzaPage(),
            const SandweshPage(),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String title, String? imageAsset) {
    bool isSelected = title == selectedCategory;  

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = title;
        });
      },
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.mainColor : Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imageAsset != null)
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Image.asset(imageAsset, width: 30, height: 30),
                ),
              Text(
                title,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
