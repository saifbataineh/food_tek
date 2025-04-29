import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/cart_details_container_widget.dart';
import 'package:food_tek/core/widgets/notification_icon_button.dart';
import 'package:food_tek/features/checkout/views/widgets/set_location_list_tile.dart';
import 'package:food_tek/generated/l10n.dart';

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
              S.of(context).checkout,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            SizedBox(
              height: responsiveHeight(context, 18),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${S.of(context).current_location} :",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SetLocationListTile(),
                SizedBox(
                  height: responsiveHeight(context, 27),
                ),
                Text(S.of(context).promo_code),
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
                        S.of(context).add,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: S.of(context).enter_your_promo,
                  ),
                ),
                PayemntRadioGroup(),
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

class PayemntRadioGroup extends StatefulWidget {
  const PayemntRadioGroup({
    super.key,
  });

  @override
  State<PayemntRadioGroup> createState() => _PayemntRadioGroupState();
}

class _PayemntRadioGroupState extends State<PayemntRadioGroup> {
  String groupValue = '';
  String groupValue2 = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).pay_with),
        SizedBox(
          height: responsiveHeight(context, 16),
        ),
        PaymentRadioGroup(
          child2: Text(S.of(context).card),
          groupValue: groupValue,
          onChanged: (value) {
            setState(() {
              groupValue = value ?? '';
            });
          },
          child: Text(S.of(context).cash),
        ),
        SizedBox(
          height: responsiveHeight(context, 16),
        ),
        if (groupValue == '2') Text(S.of(context).card_type),
        SizedBox(
          height: responsiveHeight(context, 16),
        ),
        if (groupValue == '2')
          PaymentRadioGroup(
            child2: Image.asset(AppImageStrings.maserCardIcon),
            groupValue: groupValue2,
            onChanged: (value) {
              setState(() {
                groupValue2 = value ?? '';
              });
            },
            child: Image.asset(AppImageStrings.visaIcon),
          ),
      ],
    );
  }
}

class PaymentRadioGroup extends StatefulWidget {
  const PaymentRadioGroup(
      {super.key,
      required this.child,
      required this.onChanged,
      required this.groupValue,
      required this.child2});
  final Widget child;
  final Widget child2;
  final String groupValue;
  final ValueChanged<String?>? onChanged;

  @override
  State<PaymentRadioGroup> createState() => _PaymentRadioGroupState();
}

class _PaymentRadioGroupState extends State<PaymentRadioGroup> {
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
                    groupValue: widget.groupValue,
                    onChanged: widget.onChanged)),
            widget.child,
          ],
        ),
        Row(
          children: [
            SizedBox(
              height: responsiveHeight(context, 15),
              child: Radio(
                  value: "2",
                  groupValue: widget.groupValue,
                  onChanged: widget.onChanged),
            ),
            widget.child2,
          ],
        ),
      ],
    );
  }
}
