import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
