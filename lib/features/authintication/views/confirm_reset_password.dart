import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/features/authintication/views/widgets/auth_custom_form_field.dart';
import 'package:food_tek/features/authintication/views/widgets/auth_heading_widget.dart';

class ConfirmResetPassword extends StatelessWidget {
  const ConfirmResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImageStrings.splashBackground),
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(AppImageStrings.appLogo),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: height * 0.6,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 24,
                  children: [
                    IconButton(
                      onPressed: () {
                        AppNavigatorService.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    AuthHeadingWidget(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        title: 'Reset Password',
                        actionText: 'Login',
                        infoText: 'Want to try with my current password?',
                        wantedScreen: Routes.loginPage),
                    AuthCustomFormField(
                      label: 'New Password',
                      isPassword: true,
                    ),
                    AuthCustomFormField(
                      label: 'Confirm New Password',
                      isPassword: true,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          //TODO:SERVICE THIS POP UP
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  backgroundColor: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(AppImageStrings
                                            .passwordUpdatedSuccessfullyLogo),
                                        Text(
                                          "Congratulations",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineLarge!
                                              .copyWith(color: Colors.white),
                                        ),
                                        Text(
                                          "password reset succesfuly",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium!
                                              .copyWith(
                                                  color: Colors.white,
                                                  fontSize: 22),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Text('Update Password'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}
