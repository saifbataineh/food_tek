import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';

class CongratsWidget extends StatelessWidget {
  const CongratsWidget({
    super.key,
    required this.congrats,
    required this.congratsDescription,
    this.textColor,
    this.congratsfontSize,
    this.congratsDescriptionfontSize,
  });

  final String congrats;
  final String congratsDescription;
  final Color? textColor;
  final double? congratsfontSize;
  final double? congratsDescriptionfontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(AppImageStrings.passwordUpdatedSuccessfullyLogo),
          Text(
            textAlign: TextAlign.center,
            congrats,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: textColor, fontSize: congratsfontSize),
          ),
          Text(
            textAlign: TextAlign.center,
            congratsDescription,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: textColor, fontSize: congratsDescriptionfontSize),
          ),
        ],
      ),
    );
  }
}
