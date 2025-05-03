import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/history/presentation/screens/widgets/history_item_widget.dart';
import 'package:food_tek/features/home/models/food_model.dart';
import 'package:food_tek/generated/l10n.dart';

class HistoryGridViewWithShowMoreWidget extends StatefulWidget {
  const HistoryGridViewWithShowMoreWidget({super.key});

  @override
  State<HistoryGridViewWithShowMoreWidget> createState() =>
      _HistoryGridViewWithShowMoreWidgetState();
}

class _HistoryGridViewWithShowMoreWidgetState
    extends State<HistoryGridViewWithShowMoreWidget> {
  final List<Food> cartItems = [
    Food(
        reviews: 79,
        rating: 3.5,
        img: AppImageStrings.pizza2,
        name: "Pizza Cheese",
        subTitle:
            "Food pizza dish cuisine junk food, Fast Food, Flatbread, Ingredient",
        price: 24),
    Food(
        reviews: 79,
        rating: 3.5,
        img: AppImageStrings.pizza1,
        name: "Pepperoni pizza",
        subTitle:
            "Pepperoni pizza, Margarita Pizza Margherita Italian cuisine Tomato",
        price: 29),
    Food(
      reviews: 78,
      rating: 4.4,
      img: AppImageStrings.sandwish,
      name: "Tuna Salad Sandwich",
      subTitle: "Creamy tuna salad with celery and onion on whole wheat.",
      price: 7.50,
    ),
    Food(
      reviews: 65,
      rating: 4.1,
      img: AppImageStrings.sandwish,
      name: "Classic Club Sandwich",
      subTitle: "Triple-decker with chicken, bacon, lettuce, tomato, and mayo.",
      price: 8.99,
    ),
    Food(
        reviews: 111,
        rating: 5,
        img: AppImageStrings.chickenBurger,
        name: "chicken Burger",
        subTitle: "100 gr chicken + tomato + cheese Lettuce",
        price: 20.00),
  ];
  int itemsToShow = 2;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveHeight(context, 932),
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        height: responsiveHeight(context, 20),
                      ),
                  itemCount: itemsToShow,
                  itemBuilder: (context, index) {
                    return HistoryItemWidget(cartItem: cartItems[index]);
                  }),
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  if (itemsToShow < 5) {
                    itemsToShow = itemsToShow + 1;
                  }
                });
              },
              child: Text(
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.mainColor, fontWeight: FontWeight.w600),
                "${S.of(context).load_more} ...",
              )),
        ],
      ),
    );
  }
}
