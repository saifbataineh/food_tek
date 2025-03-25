import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/features/favorite/views/favorite_page.dart';
import 'package:food_tek/features/home/views/main_page.dart';
import 'package:food_tek/features/person/screen/person_screen.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;
  List pages = [
    MainPage(),
    FavoritePage(),
    Container(
      child: Text("person"),
    ),
    PersonScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.seconadryColor,
              offset: Offset(0, -1),
              spreadRadius: 2,
            )
          ],
          color: Colors.green,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {
            AppNavigatorService.pushNamed(context, routeName: Routes.cartPage);
          },
          icon: Image.asset(AppImageStrings.cart),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        backgroundColor: AppColors.seconadryColor,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColors.darkgreyColor,
        selectedItemColor: AppColors.mainColor,
        unselectedLabelStyle: TextStyle(color: AppColors.darkgreyColor),
        selectedLabelStyle: TextStyle(color: AppColors.mainColor),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: "history"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Person"),
        ],
      ),
    );
  }
}
