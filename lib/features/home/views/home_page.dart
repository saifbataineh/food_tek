import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/home/widget/fav.dart';
import 'package:food_tek/features/home/models/food_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? location = "";
  TextEditingController _searchController = TextEditingController();
  String selectedCategory = "All"; // الفئة النشطة
  List<Food> foodList = [
    Food(
        img: AppImageStrings.burger,
        name: "Burger",
        subTitle: "100grchickentomatocheeseLettuce- 1-31 me46-31-iPhone13mini-1",
        price: 40.2),
    // Repeat the food list items as needed
  ];

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
                underline: SizedBox(),
                hint: Text(
                  "current location",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text("New York"),
                    value: "New York",
                  ),
                  DropdownMenuItem(
                    value: "San Francisco",
                    child: Text("San Francisco"),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    location = value as String?;
                  });
                },
              ),
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
                    color: AppColors.mainColor.withOpacity(0.1),
                  ),
                  child: Icon(
                    size: 18,
                    Icons.location_on,
                    color: AppColors.mainColor,
                  ),
                ),
              ),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            ),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.filter_list),
              ),
              onChanged: (value) {
                print(value);
              },
            ),
            SizedBox(height: 5),
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    indicatorColor:
                        Colors.transparent, // إخفاء المؤشر الافتراضي
                    tabs: [
                      _buildTab("All", null),
                      _buildTab("Burger", AppImageStrings.burger),
                      _buildTab("Pizza", AppImageStrings.pizza),
                      _buildTab("Sandwich", AppImageStrings.sandwsh),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width, // Make responsive
                    height: 137,
                    child: Image.asset(AppImageStrings.discountPhoto),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text("Top Rated",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  // Add a ListView.builder to display food items
                  
                  SizedBox(
                    height: 200,
                    
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foodList.length,
                      itemBuilder: (context, index) {
                        return favScreen(
                          food: foodList[index],
                        );
                      },
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String title, String? imageAsset) {
    bool isSelected =
        title == selectedCategory; // تحقق مما إذا كان العنصر نشطًا

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
          color: isSelected
              ? AppColors.mainColor
              : Colors.white, // تغيير اللون عند الاختيار
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
                    color: isSelected
                        ? Colors.white
                        : Colors.black), // تغيير لون النص عند التحديد
              ),
            ],
          ),
        ),
      ),
    );
  }
}
