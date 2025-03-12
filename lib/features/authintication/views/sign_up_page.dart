import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/features/app/app.dart';
import 'package:food_tek/features/authintication/views/widgets/sub_head_line_text_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppImageStrings.splashBackground,
                    ),
                  ),
                ),
                child: Column(spacing: height * 0.03, children: [
                  Image(
                    image: AssetImage(AppImageStrings.appLogo),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    height: height * 0.7,
                    width: width * 0.8,
                    padding: EdgeInsets.symmetric(horizontal: 44),
                    child: Column(
                      spacing: height * 0.01,
                      children: [
                        Text(
                          "Sign up",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        SubHeadLineTextWidget(
                            infoText: 'already have an account? ',
                            actionText: 'login',
                            wantedScreen: Routes.loginPage),
                      ],
                    ),
                  ),
                ]))));
  }
}
