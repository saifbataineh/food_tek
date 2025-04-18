import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/custom_form_field.dart';
import 'package:food_tek/core/widgets/notification_icon_button.dart';
import 'package:food_tek/generated/l10n.dart';

class PayOrderPage extends StatelessWidget {
  const PayOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding:
            EdgeInsets.symmetric(horizontal: responsiveWidth(context, 30)),
        actions: [NotificationIconButton()],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsiveWidth(context, 22)),
        child: Column(
          spacing: responsiveHeight(context, 16),
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Card",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: responsiveWidth(context, 10)),
              child: Image.asset(AppImageStrings.visaCard),
            ),
            CustomFormField(label: S.of(context).name, controller: TextEditingController()),
            CustomFormField(
              label: S.of(context).card_number,
              controller: TextEditingController(),
              suffixIcon: Image.asset(AppImageStrings.cardIcon),
            ),
            Row(
              children: [
                Expanded(
                  child: CustomFormField(
                      label: S.of(context).expiry,
                      controller: TextEditingController(),
                      keyboardType: TextInputType.numberWithOptions()),
                ),
                SizedBox(
                  width: responsiveWidth(context, 7),
                ),
                Expanded(
                  child: CustomFormField(
                    label: "CVC",
                    controller: TextEditingController(),
                    keyboardType: TextInputType.numberWithOptions(),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                spacing: responsiveHeight(context, 16),
                children: [
                  SizedBox(
                    width: responsiveWidth(context, 233),
                    child: Text(
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 12,
                                ),
                        S.of(context).we_will_send_you_an_order_details_to_your_email_after_the_successfull_payment),
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 327),
                    child: ElevatedButton(
                        onPressed: () {
                          AppNavigatorService.pushNamed(context,
                              routeName: Routes.congratsCheckOutPage);
                        },
                        child: Row(
                          spacing: responsiveWidth(context, 16),
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(S.of(context).pay_for_the_order),
                            Image.asset(AppImageStrings.lockIcon)
                          ],
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
