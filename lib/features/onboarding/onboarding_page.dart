import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/onboarding/widgets/onboarding_widget.dart';
import 'package:food_tek/generated/l10n.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      OnboardingWidget(
          title: S.of(context).onboarding1_title,
          subTitle: S.of(context).onboarding1_text,
          image: AppImageStrings.onBoadring1),
      OnboardingWidget(
          title: S.of(context).onboarding2_title,
          subTitle: S.of(context).onboarding2_text,
          image: AppImageStrings.onBoarding2),
      OnboardingWidget(
          title: S.of(context).onboarding3_title,
          subTitle: S.of(context).onboarding3_text,
          image: AppImageStrings.onBoarding3),
    ];

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: responsiveHeight(context, 210),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.white.withValues(alpha: 0)]),
              image: DecorationImage(
                image: AssetImage(AppImageStrings.splashBackground),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: responsiveWidth(context, 50)),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: responsiveHeight(context, 678),
                    child: PageView(
                      onPageChanged: (value) {
                        setState(() {
                          currentIndex = value;
                        });
                      },
                      controller: pageController,
                      children: pages,
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 36),
                  ),
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
                      onPressed: () {
                        if (currentIndex < pages.length - 1) {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          AppNavigatorService.pushReplacementNamed(context,
                              routeName: Routes.turnOnLocationPage);
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: responsiveHeight(context, 14.5),
                          horizontal: responsiveWidth(context, 77.22),
                        ),
                        child: Text(
                          S.of(context).continue1,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: responsiveHeight(context, 81)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          AppNavigatorService.pushReplacementNamed(context,
                              routeName: Routes.loginPage);
                        },
                        child: Text(
                          S.of(context).skip_button,
                          style: (Theme.of(context).textTheme.displaySmall),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          pages.length,
                          (index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              color: index == currentIndex
                                  ? AppColors.mainColor
                                  : AppColors.lightgreyColor,
                              shape: BoxShape.circle,
                            ),
                            height: responsiveHeight(context, 10),
                            width: responsiveWidth(context, 10),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          //pageController.animateToPage(pages.length - 1,
                          //  duration: Duration(seconds: 3),
                          //curve: Curves.bounceIn);
                          if (currentIndex < pages.length - 1) {
                            pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          } else {
                            AppNavigatorService.pushReplacementNamed(context,
                                routeName: Routes.turnOnLocationPage);
                          }
                        },
                        icon: Icon(Icons.arrow_right_alt_outlined),
                        color: AppColors.mainColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
