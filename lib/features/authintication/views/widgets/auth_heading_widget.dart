import 'package:flutter/material.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/features/authintication/views/widgets/sub_head_line_text_widget.dart';

class AuthHeadingWidget extends StatelessWidget {
  const AuthHeadingWidget({
    super.key,
    
    this.crossAxisAlignment=CrossAxisAlignment.center, required this.title, required this.actionText,required this.infoText, required this.wantedScreen
  });
final String title;
final String infoText;
final String actionText;
final String wantedScreen;
final CrossAxisAlignment crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      spacing: 12,
      children: [
     
        Text(
         title ,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SubHeadLineTextWidget(
          actionText: actionText,
          infoText: infoText,
          wantedScreen: wantedScreen,
        ),
      ],
    );
  }
}
