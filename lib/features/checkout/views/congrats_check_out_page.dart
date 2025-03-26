import 'package:flutter/material.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/congrats_widget.dart';
import 'package:food_tek/core/widgets/notification_icon_button.dart';

class CongratsCheckOutPage extends StatelessWidget {
  const CongratsCheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding:
            EdgeInsets.symmetric(horizontal: responsiveWidth(context, 30)),
        actions: [NotificationIconButton()],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: responsiveWidth(context, 22),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Checkout",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            SizedBox(
              height: responsiveHeight(context, 106),
            ),
            CongratsWidget(
                congratsfontSize: 24,
                congratsDescriptionfontSize: 20,
                congrats: "Your Order Done Successfully",
                congratsDescription:
                    "you will get your order within 12min.thanks for using our services"),
            SizedBox(
              height: responsiveHeight(context, 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: responsiveWidth(
                    context,
                    327,
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        AppNavigatorService.pushAndRemoveUntil(context,
                        
                            routeName: Routes.navigationPage, arguments: 2);
                      },
                      child: Text("track Your Order")),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
