
import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/cart_details_container_widget.dart';
import 'package:food_tek/core/widgets/notification_icon_button.dart';
import 'package:food_tek/features/checkout/views/widgets/set_location_list_tile.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding:
            EdgeInsets.symmetric(horizontal: responsiveWidth(context, 30)),
        actions: [
          NotificationIconButton(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsiveWidth(context, 22)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Checkout",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            SizedBox(
              height: responsiveHeight(context, 18),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "current location :",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SetLocationListTile(),
                SizedBox(
                  height: responsiveHeight(context, 27),
                ),
                Text("Promo code ?"),
                SizedBox(
                  height: responsiveHeight(context, 16),
                ),
                
                TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.all(0),
                    suffixIcon: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: responsiveWidth(context, 33),
                          vertical: responsiveHeight(context, 12)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        color: AppColors.mainColor,
                      ),
                      child: Text(
                        "Add",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter your promo",
                  ),
                ),
                Text("Pay With"),
                SizedBox(
                  height: responsiveHeight(context, 16),
                ),
                PaymentRadioGroup(
                  child: Text("cash"),
                ),
                SizedBox(
                  height: responsiveHeight(context, 16),
                ),
                Text("Card Type"),
                SizedBox(
                  height: responsiveHeight(context, 16),
                ),
                PaymentRadioGroup(
                  child: Image.asset(AppImageStrings.visaIcon),
                ),
                SizedBox(
                  height: responsiveHeight(context, 42),
                ),
                CartDetailsContainerWidget(
                  onPressed: () {
                    AppNavigatorService.pushNamed(context,
                        routeName: Routes.payOrderPage);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PaymentRadioGroup extends StatefulWidget {
  const PaymentRadioGroup({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  State<PaymentRadioGroup> createState() => _PaymentRadioGroupState();
}

class _PaymentRadioGroupState extends State<PaymentRadioGroup> {
  String groupValue = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            SizedBox(
              height: responsiveHeight(context, 15),
              child: Radio(
                  value: "1",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value ?? '';
                    });
                  }),
            ),
            widget.child,
          ],
        ),
        Row(
          children: [
            SizedBox(
              height: responsiveHeight(context, 15),
              child: Radio(
                  value: "2",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value ?? '';
                    });
                  }),
            ),
            widget.child,
          ],
        ),
      ],
    );
  }
}
