import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/add_remove_to_cart_widget.dart';
import 'package:food_tek/features/home/models/food_model.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    super.key,
    required this.cartItem,
  });

  final Food cartItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: AppColors.seconadryColor)),
      height: responsiveHeight(context, 103),
      child: Dismissible(
        direction: DismissDirection.endToStart,
        background: SizedBox(
          width: responsiveWidth(context, 387),
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.gold, borderRadius: BorderRadius.circular(7)),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: responsiveWidth(context, 22)),
            transformAlignment: Alignment.centerRight,
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        ),
        key: UniqueKey(),
        child: ListTile(
          title: Text(
            cartItem.name,
            style:
                Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 15),
          ),
          leading: Image.asset(cartItem.img),
          subtitle: Text(
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColors.mainColor, fontSize: 19),
            "\$ ${cartItem.price}",
          ),
          trailing: SizedBox(
              width: responsiveWidth(context, 93),
              child: AddRemoveToCartWidget(
                iconSize: 26,
                minusBackgroundColor: AppColors.seconadryColor,
              )),
        ),
      ),
    );
  }
}
