import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/controller/onboarding_controller.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    this.btn,
  });
  final String title;
  final String subTitle;
  final String image;
  final Widget? btn;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        SizedBox(
          height: height * 0.1,
        ),
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
        ),
        // ElevatedButton(onPressed: () {}, child: Text('continue'))
      ],
    );
  }
}
