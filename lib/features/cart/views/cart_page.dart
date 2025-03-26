import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/current_location_widget.dart';
import 'package:food_tek/core/widgets/cart_details_container_widget.dart';
import 'package:food_tek/features/cart/views/widgets/cart_item_widget.dart';
import 'package:food_tek/features/cart/views/widgets/empty_page_widget.dart';
import 'package:food_tek/features/history/views/widgets/history_grid_view_with_show_more_widget.dart';
import 'package:food_tek/features/home/models/food_model.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  final List<Food> cartItems = [
    Food(
        reviews: 79,
        rating: 3.5,
        img: AppImageStrings.pizza2,
        name: "Pizza Cheese",
        subTitle:
            "Food pizza dish cuisine junk food, Fast Food, Flatbread, Ingredient",
        price: 24,
        quantity: 1),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsiveWidth(context, 30)),
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              CurrentLocationWidget(),
              TabBar(
                labelStyle: GoogleFonts.inter(
                    fontSize: 16, fontWeight: FontWeight.w600),
                unselectedLabelColor: AppColors.blueGrey,
                labelPadding: EdgeInsets.zero,
                tabs: [
                  Row(
                    children: [
                      Text(
                        "Cart",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: AppColors.mainColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "History",
                        style: GoogleFonts.inter(),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                  height: responsiveHeight(context, 720),
                  child: TabBarView(children: [
                    cartItems.isEmpty
                        ? EmptyPageWidget(
                            title: 'Cart Empty',
                            subTitle:
                                'You don’t have add any foods in cart at this time ')
                        : Stack(
                            children: [
                              ListView.separated(
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: responsiveHeight(context, 20),
                                      ),
                                  itemCount: cartItems.length,
                                  itemBuilder: (context, index) {
                                    return CartItemWidget(
                                        cartItem: cartItems[index]);
                                  }),
                              CartDetailsContainerWidget(
                                onPressed: () {
                                  AppNavigatorService.pushNamed(context,
                                      routeName: Routes.checkoutPage);
                                },
                              ),
                            ],
                          ),
                    cartItems.isEmpty
                        ? EmptyPageWidget(
                            title: 'History  Empty',
                            subTitle: 'You don’t have order any foods before')
                        : HistoryGridViewWithShowMoreWidget(),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
