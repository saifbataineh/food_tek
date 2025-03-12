import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/features/authintication/views/widgets/auth_heading_widget.dart';
import 'package:food_tek/features/authintication/views/widgets/continue_with_widget.dart';
import 'package:food_tek/features/authintication/views/widgets/login_form_widget.dart';
import 'package:food_tek/features/authintication/views/widgets/sub_head_line_text_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImageStrings.splashBackground)),
          ),
          child: Column(
            spacing: height * 0.03,
            children: [
              Image(
                image: AssetImage(AppImageStrings.appLogo),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                height: height * 0.80,
                width: width * 0.9,
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  spacing: 24,
                  children: [
                    AuthHeadingWidget(),
                    LoginFormWidget(),
                    Row(
                      children: [
                        Expanded(child: Divider()),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("or")),
                        Expanded(child: Divider()),
                      ],
                    ),
                    Column(
                      children: [
                        ContinueWithWidget(
                          company: 'Google',
                          image: AppImageStrings.googleLogo,
                        ),
                        ContinueWithWidget(
                          company: 'Facebook',
                          image: AppImageStrings.facebookLogo,
                        ),
                        ContinueWithWidget(
                          company: 'Apple',
                          image: AppImageStrings.appleLogo,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
