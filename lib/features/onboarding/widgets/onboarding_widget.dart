import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/controller/onboarding_controller.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });
  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,

        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(69),
              gradient: LinearGradient(colors: [
                Color(0xff25AE4B),
                Color(0xff0F481F),
              ])),
        )
      ],
    );
  }
}
