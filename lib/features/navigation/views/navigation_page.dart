import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/features/home/views/home_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;
  List pages = [HomePage(),Container(child: Text("favorate"),),Container(child: Text("person"),),Container(child: Text("map"),)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
          padding: EdgeInsets.all(8),
          decoration:
              BoxDecoration(color: Colors.green, shape: BoxShape.circle),
          child: Icon(Icons.card_travel)),
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "history"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "person"),
        ],
      ),
    );
  }
}
