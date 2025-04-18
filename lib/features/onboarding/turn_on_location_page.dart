import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/services/location_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/onboarding/widgets/display_title_and_subtitle_widget.dart';
import 'package:food_tek/generated/l10n.dart';

class TurnOnLocationPage extends StatelessWidget {
  const TurnOnLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: responsiveHeight(context, 230),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Colors.white.withValues(alpha: 0)]),
                image: DecorationImage(
                  image: AssetImage(AppImageStrings.mapsBackground),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: responsiveWidth(context, 50)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: responsiveHeight(context, 254),
                  ),
                  Image.asset(
                    AppImageStrings.onBoadring4,
                    height: responsiveHeight(
                      context,
                      219,
                    ),
                    width: responsiveWidth(
                      context,
                      328.5,
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 45),
                  ),
                  SizedBox(
                    child: DisplayTitleAndSubtitleWidget(
                        title: S.of(context).turnloc_title,
                        subTitle: S.of(context).turnloc_text),
                  ),
                  Column(
                    spacing: responsiveHeight(context, 12),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(69),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xff25AE4B),
                              Color(0xff0F481F),
                            ],
                          ),
                        ),
                        width: responsiveWidth(context, 307),
                        child: TextButton(
                          onPressed: () async{
                            await LocationService.checkEnabledAndPermission();
                            if(!context.mounted)return;
                            AppNavigatorService.pushNamed(context,
                                routeName: Routes.loginPage);
                          },
                          child: Text(
                            S.of(context).continue2,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: responsiveWidth(context, 307),
                        child: TextButton(
                          onPressed: () {
                            AppNavigatorService.pushReplacementNamed(context,
                                routeName: Routes.loginPage);
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.greyColor,
                            padding: EdgeInsets.symmetric(vertical: 15),
                          ),
                          child: Text(
                            S.of(context).cancel,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  color: AppColors.greyBlue,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
