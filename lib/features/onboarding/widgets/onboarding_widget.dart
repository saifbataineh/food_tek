import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/features/onboarding/controller/onboarding_controller.dart';
import 'package:food_tek/features/onboarding/widgets/display_title_and_subtitle_widget.dart';

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
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        SizedBox(
          height: height * 0.1,
        ),
        Image.asset(
          image,
        ),
        DisplayTitleAndSubtitleWidget(title: title, subTitle: subTitle),

        // ElevatedButton(onPressed: () {}, child: Text('continue'))
      ],
    );
  }
}
