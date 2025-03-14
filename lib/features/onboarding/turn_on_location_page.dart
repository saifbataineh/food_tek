import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/features/onboarding/widgets/display_title_and_subtitle_widget.dart';

class TurnOnLocationPage extends StatelessWidget {
  const TurnOnLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 0.22 * height,
              width: width,
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
              padding: EdgeInsets.symmetric(horizontal: width / 20),
              child: Column(
                spacing: height * 0.05,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImageStrings.onBoadring4),
                  DisplayTitleAndSubtitleWidget(
                      title: "turn on your location",
                      subTitle:
                          "to continues, let your device turn on location, which uses google’s location service"),
                  Column(
                    spacing: height * 0.02,
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
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            AppNavigatorService.pushReplacementNamed(context,
                                routeName: Routes.loginPage);
                          },
                          child: Text(
                            'Yes, Turn It On',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.greyColor,
                            padding: EdgeInsets.symmetric(vertical: 15),
                          ),
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: AppColors.blueGrey),
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
