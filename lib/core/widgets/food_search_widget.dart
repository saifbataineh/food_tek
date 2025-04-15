import 'package:flutter/material.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class FoodSearchWidget extends StatefulWidget {
  const FoodSearchWidget({super.key,  this.showFilterButton=true});
final bool showFilterButton;
  @override
  State<FoodSearchWidget> createState() => _FoodSearchWidgetState();
}

class _FoodSearchWidgetState extends State<FoodSearchWidget> {
  final TextEditingController _searchController = TextEditingController();
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveHeight(context, 42),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search menu, restaurant or etc',
          hintStyle: TextStyle(fontSize: 12),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          prefixIcon: Icon(Icons.search),
          fillColor: Theme.of(context).cardColor,
          filled: true,
          suffixIcon:widget.showFilterButton? IconButton(
              onPressed: () {
                AppNavigatorService.pushNamed(context,
                    routeName: Routes.filtersPage);
              },
              icon: Icon(Icons.filter_list)):null,
        ),
        onChanged: (value) {
          print(value);
        },
      ),
    );
  }
}
