import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';

class SubHeadLineTextWidget extends StatelessWidget {
  const SubHeadLineTextWidget({
    required this.infoText,
    required this.actionText,
    super.key, required this.wantedScreen,
   
  });
  
  final String infoText;
  final String actionText;
  final String wantedScreen;

  @override
  Widget build(BuildContext context) {
   final GestureRecognizer gestureRecognizer=TapGestureRecognizer()..onTap=(){
AppNavigatorService.pushReplacementNamed(context, routeName: wantedScreen);
    };
    return Text.rich(TextSpan(children: [
      TextSpan(text: infoText, style: Theme.of(context).textTheme.bodySmall),
      TextSpan(
        recognizer: gestureRecognizer,
          text: actionText,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: AppColors.mainColor, fontWeight: FontWeight.w600))
    ]));
  }
}
