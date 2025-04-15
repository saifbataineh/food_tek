import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class FoodTabBarWidget extends StatefulWidget {
  const FoodTabBarWidget({
    super.key,
  });

  @override
  State<FoodTabBarWidget> createState() => _FoodTabBarWidgetState();
}

class _FoodTabBarWidgetState extends State<FoodTabBarWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelPadding: EdgeInsets.all(0),
      onTap: (value) {
        setState(() {
          selectedIndex = value;
        });
        print(value);
      },
      tabAlignment: TabAlignment.start,
      isScrollable: true,
      indicatorColor: Colors.green,
      labelColor: Colors.green,
      unselectedLabelColor: Colors.black,
      dividerHeight: 0,
      indicator: BoxDecoration(),
      tabs: [
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(right: responsiveWidth(context, 12)),
          decoration: BoxDecoration(
            color: 0 == selectedIndex ? AppColors.mainColor : Colors.white,
            border: Border.all(
              color: AppColors.seconadryColor,
            ),
          ),
          alignment: Alignment.center,
          width: responsiveWidth(context, 49),
          height: responsiveHeight(context, 43),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "All",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: 0 == selectedIndex ? Colors.white : AppColors.black),
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(right: responsiveWidth(context, 12)),
            decoration: BoxDecoration(
              color: 1 == selectedIndex ? AppColors.mainColor : Theme.of(context).cardColor ,
              border: Border.all(
                color: AppColors.seconadryColor,
              ),
            ),
            alignment: Alignment.center,
            width: responsiveWidth(context, 135),
            height: responsiveHeight(context, 43),
            child: Row(spacing: responsiveWidth(context, 16), children: [
              Image.asset(
                AppImageStrings.burger,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Burger",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color:
                          1 == selectedIndex ?  Colors.white :Theme.of(context).brightness==Brightness.dark?AppColors.whiteGrey: AppColors.black),
                ),
              )
            ])),
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(right: responsiveWidth(context, 12)),
          decoration: BoxDecoration(
            color: 2 == selectedIndex ? AppColors.mainColor : Colors.white,
            border: Border.all(
              color: AppColors.seconadryColor,
            ),
          ),
          alignment: Alignment.center,
          width: responsiveWidth(context, 126),
          height: responsiveHeight(context, 43),
          child: Row(
            spacing: responsiveWidth(context, 16),
            children: [
              Image.asset(
                AppImageStrings.pizza,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "pizza",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color:
                          2 == selectedIndex ? Colors.white : AppColors.black),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(right: responsiveWidth(context, 12)),
          decoration: BoxDecoration(
            color: 3 == selectedIndex ? AppColors.mainColor : Colors.white,
            border: Border.all(
              color: AppColors.seconadryColor,
            ),
          ),
          alignment: Alignment.center,
          width: responsiveWidth(context, 154),
          height: responsiveHeight(context, 43),
          child: Row(
            spacing: responsiveWidth(context, 16),
            children: [
              Image.asset(
                AppImageStrings.sandwishLogo,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Sandwish",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color:
                          3 == selectedIndex ? Colors.white : AppColors.black),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
