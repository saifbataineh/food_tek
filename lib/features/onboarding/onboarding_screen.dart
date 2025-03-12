import 'package:flutter/material.dart';
import 'package:food_tek/core/app_image_strings.dart';
import 'package:food_tek/features/onboarding/widgets/onboarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 0.3 * height,
            width: width,
            child: Image.asset(
              fit: BoxFit.cover,
              AppImageStrings.splashBackground,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: height * 0.5,
                      child: PageView(
                        onPageChanged: (value) {
                          setState(() {
                            currentIndex = value;
                          });
                        },
                        controller: pageController,
                        children: [
                          OnboardingWidget(
                              title: "welcome to sahlah",
                              subTitle:
                                  "enjoy a fast and smooth food delivery at your doorstep",
                              image: AppImageStrings.onBoadring1),
                          OnboardingWidget(
                              title: "get delivery on time",
                              subTitle:
                                  "order your favorite food within the plam of your hand and the zone of your comfort",
                              image: AppImageStrings.onBoarding2),
                          OnboardingWidget(
                              title: "choose your food",
                              subTitle:
                                  "order your favorite food within the plam of your hand and the zone of your comfort",
                              image: AppImageStrings.onBoarding3),
                          OnboardingWidget(
                              title: "turn on your location",
                              subTitle:
                                  "to continues, let your device turn on location, which uses google’s location service",
                              image: AppImageStrings.onBoadring4),
                        ],
                      )),
                  SizedBox(
                    height: height * 0.05,
                    width: double.infinity,
                    child: Center(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                            color: index == currentIndex
                                ? Colors.amber
                                : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          height: 10,
                          width: 10,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      child: Text('continue'))
                ],
              )
              /* Column(
                children: [
                  SizedBox(
                    height: height * 0.15,
                  ),
                  OnboardingWidget(
                    image: AppImageStrings.onBoadring1,
                    title: "welcome to sahlah",
                    subTitle:
                        'enjoy a fast and smooth food delivery at your doorstep',
                  ),
                ],
              ),
              */
              ),
        ],
      ),
    ));
  }
}
