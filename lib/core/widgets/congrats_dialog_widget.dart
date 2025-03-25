import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/generated/l10n.dart';

class CongratsDialodWidget extends StatelessWidget {
  const CongratsDialodWidget({
    super.key, required this.congrats, required this.congratsDescription,
    
  });
final String congrats;
final String congratsDescription;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(AppImageStrings.passwordUpdatedSuccessfullyLogo),
            Text(
             congrats,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.white),
            ),
            Text(
              congratsDescription,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.white, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}