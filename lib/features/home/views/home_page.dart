import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? location = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            ListTile(
              subtitle: Text(
                location ?? "",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              title: DropdownButton(
                  hint: Text(
                    "choose a location",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text("data"),
                      value: "data",
                    ),
                    DropdownMenuItem(
                      value: "data2",
                      child: Text("data2"),
                    ),
                    /*     DropdownMenuItem(
                  child: Text("data3"),
                ),
                DropdownMenuItem(
                  child: Text("data4"),
                ), */
                  ],
                  onChanged: (value) {
                    location = value;
                    setState(() {});
                  }),
              leading: Container(
                padding:
                    const EdgeInsets.only(top: 3.5, bottom: 3.5, right: 10),
                width: 44,
                height: 41,
                child: Container(
                  width: responsiveWidth(context, 34),
                  height: responsiveWidth(context, 34),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.mainColor.withValues(alpha: 0.1),
                  ),
                  child: Icon(
                    size: 18,
                    Icons.abc,
                    color: AppColors.mainColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
