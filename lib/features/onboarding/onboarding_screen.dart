import 'package:flutter/material.dart';
import 'package:food_tek/core/app_image_strings.dart';
import 'package:food_tek/features/onboarding/widgets/onboarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<OnboardingWidget> onBoardingBuilder = [
    OnboardingWidget(
        title: "welcome to sahlah",
        subTitle: "enjoy a fast and smooth food delivery at your doorstep",
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
  ];
  PageController pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: width,
          height: 0.3 * height,
          child: Image.asset(
            fit: BoxFit.cover,
            AppImageStrings.splashBackground,
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: [
                Container(
                  height: 500,
                  width: 200,
                  child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          currentIndex = value;
                        });
                      },
                      controller: pageController,
                      itemCount: onBoardingBuilder.length,
                      itemBuilder: (context, i) => Column(
                            children: [
                              onBoardingBuilder[i],
                            ],
                          )),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(69),
                        ),
                        backgroundColor: Colors.transparent),
                    onPressed: () {
                      setState(() {});
                      // context.read<AppCubit>().completeOnboarding();
                      pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Text("continue")),
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                    itemCount: onBoardingBuilder.length,
                    itemBuilder: (context, index) => Container(
                          color:index==currentIndex? Colors.amber:Colors.green,
                          height: 10,
                          width: 10,

                        ))
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
    ));
  }
}
