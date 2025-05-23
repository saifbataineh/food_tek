import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/cart/views/widgets/cart_details_row_widget.dart';
import 'package:food_tek/generated/l10n.dart';

class CartDetailsContainerWidget extends StatelessWidget {
  const CartDetailsContainerWidget({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImageStrings.splashBackground),
              colorFilter: ColorFilter.mode(
                Colors.white, // Adjust opacity as needed
                BlendMode.srcATop, // Or another blend mode
              ),
            ),
            color: AppColors.mainColor,
          ),
          height: responsiveHeight(context, 206),
          width: responsiveWidth(context, 378),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: responsiveWidth(context, 12),
                vertical: responsiveHeight(context, 5)),
            child: Column(
              spacing: responsiveHeight(context, 6),
              children: [
                CartDeatilsRowWidget(
                  category: S.of(context).sub_total,
                  price: "100",
                ),
                CartDeatilsRowWidget(
                  category: S.of(context).delivery_charge,
                  price: "10",
                ),
                CartDeatilsRowWidget(
                  category: S.of(context).discount,
                  price: "10",
                ),
                CartDeatilsRowWidget(
                  textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                      ),
                  category: S.of(context).total,
                  price: "100",
                ),
                SizedBox(
                  height: responsiveHeight(context, 14),
                ),
                SizedBox(
                  height: responsiveHeight(context, 40),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.whiteGrey,
                        foregroundColor: AppColors.mainColor),
                    child: Text(S.of(context).place_my_order),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
