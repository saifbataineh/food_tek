import 'package:flutter/material.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/features/authintication/views/widgets/sub_head_line_text_widget.dart';

class AuthHeadingWidget extends StatelessWidget {
  const AuthHeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        Text(
          "Login",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SubHeadLineTextWidget(
          actionText: 'Sign Up',
          infoText: 'Don\'t have an account? ',
          wantedScreen: Routes.signUpPage,
        ),
      ],
    );
  }
}
