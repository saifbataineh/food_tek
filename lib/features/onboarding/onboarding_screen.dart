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
      body: Stack(
        children: [
          // خلفية الشاشة العلوية
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
                              "order your favorite food within the palm of your hand and the zone of your comfort",
                          image: AppImageStrings.onBoarding2),
                      OnboardingWidget(
                          title: "choose your food",
                          subTitle:
                              "order your favorite food within the palm of your hand and the zone of your comfort",
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
                SizedBox(height: 50,),
                if (currentIndex == 3) 
                  Column(
                    children: [
                      SizedBox(
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {
                          
                          },
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
                          onPressed: () {
                          
                          },
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
                    height: 30,
                    width: 300,
                    
                    child: ElevatedButton(
                      onPressed: () {
                        pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 120,),
                  SizedBox(
                  height: height * 0.05,
                  width: double.infinity,
                  child: Center(
                    child: Row(
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
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
