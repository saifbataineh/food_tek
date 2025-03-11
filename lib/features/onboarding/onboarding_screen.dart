import 'package:flutter/material.dart';
import 'package:food_tek/core/app_image_strings.dart';
import 'package:food_tek/features/onboarding/widgets/onboarding_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

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
        ),
      ],
    ));
  }
}
