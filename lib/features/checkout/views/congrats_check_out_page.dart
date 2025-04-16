import 'package:flutter/material.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/congrats_widget.dart';
import 'package:food_tek/core/widgets/notification_icon_button.dart';
import 'package:food_tek/generated/l10n.dart';

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
              S.of(context).checkout,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            SizedBox(
              height: responsiveHeight(context, 106),
            ),
            CongratsWidget(
                congratsfontSize: 24,
                congratsDescriptionfontSize: 20,
                congrats: S.of(context).your_order_done_successfully,
                congratsDescription:
                    S.of(context).you_will_get_your_order_within_12_min_thanks_for_using_our_services),
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
                      child: Text(S.of(context).track_your_order)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
