import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
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
              padding: const EdgeInsets.symmetric(horizontal: 35),
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
                      children: [
                        OnboardingWidget(
                            title: "Welcome to Sahlah",
                            subTitle:
                                "Enjoy a fast and smooth food delivery at your doorstep",
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
                        OnboardingWidget(
                          title: "Turn On Your Location",
                          subTitle:
                              "To continue, let your device turn on location, which uses Google’s location service",
                          image: AppImageStrings.onBoadring4,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  if (currentIndex == 3)
                    Column(
                      children: [
                        SizedBox(
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              padding: EdgeInsets.symmetric(vertical: 15),
                            ),
                            child: Text(
                              "Yes, Turn It On",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: 300,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              side: BorderSide(color: Colors.grey),
                            ),
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    )
                  else
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        style: ElevatedButton.styleFrom(),
                        child: Text(
                          'Continue',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      /// زر "Skip"
                      TextButton(
                        onPressed: () {
                          pageController.jumpToPage(3);
                        },
                        child: Text("Skip"),
                      ),

                      Spacer(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          4,
                          (index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              color: index == currentIndex
                                  ? Colors.green
                                  : Colors.grey,
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
                          if (currentIndex < 3) {
                            pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        icon: Icon(Icons.arrow_right_alt_outlined),
                        color: Colors.green,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
