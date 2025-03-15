import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/features/onboarding/widgets/onboarding_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController pageController = PageController();
  int currentIndex = 0;
  final List<Widget> pages = [
    OnboardingWidget(
        title: "Welcome to Sahlah",
        subTitle: "Enjoy a fast and smooth food delivery at your doorstep",
        image: AppImageStrings.onBoadring1),
    OnboardingWidget(
        title: "Get delivery on time",
        subTitle:
            "Order your favorite food within the palm of your hand and the zone of your comfort",
        image: AppImageStrings.onBoarding2),
    OnboardingWidget(
        title: "Choose your food",
        subTitle:
            "Order your favorite food within the palm of your hand and the zone of your comfort",
        image: AppImageStrings.onBoarding3),
  ];
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
                  image: AssetImage(AppImageStrings.splashBackground),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width / 20, vertical: height * 0.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: PageView(
                        onPageChanged: (value) {
                          setState(() {
                            currentIndex = value;
                          });
                        },
                        controller: pageController,
                        children: pages),
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
                    width: double.infinity,
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
                      child: Text(
                        'Continue',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(height: height * 0.1),
                  Row(
                    children: [
                      /// زر "Skip"
                      TextButton(
                        onPressed: () {
                          AppNavigatorService.pushReplacementNamed(context,
                              routeName: Routes.turnOnLocationPage);
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(color: AppColors.blueGrey),
                        ),
                      ),

                      Spacer(),

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
                            height: 10,
                            width: 10,
                          ),
                        ),
                      ),

                      Spacer(),

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
          ],
        ),
      ),
    );
  }
}
