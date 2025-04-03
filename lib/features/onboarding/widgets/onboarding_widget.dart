import 'package:flutter/material.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: responsiveHeight(context, 150)),
          Image.asset(
            image,
            height: responsiveHeight(context, 328),
            width: responsiveWidth(context, 328),
          ),
          SizedBox(height: responsiveHeight(context, 40)),

          DisplayTitleAndSubtitleWidget(title: title, subTitle: subTitle),

          // ElevatedButton(onPressed: () {}, child: Text('continue'))
        ],
      ),
    );
  }
}


