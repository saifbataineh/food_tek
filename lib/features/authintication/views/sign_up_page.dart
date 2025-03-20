import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/authintication/views/widgets/auth_heading_widget.dart';
import 'package:food_tek/features/authintication/views/widgets/sign_up_form_widget.dart';
import 'package:food_tek/generated/l10n.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
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
          child: SingleChildScrollView(
              child: Column(children: [
            SizedBox(
              height: responsiveHeight(context, 19),
            ),
            Image(
              image: AssetImage(AppImageStrings.appLogo),
            ),
            SizedBox(
              height: responsiveHeight(context, 42),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              width: responsiveWidth(context, 343),
              padding: EdgeInsets.symmetric(
                  horizontal: responsiveWidth(context, 24),
                  vertical: responsiveHeight(context, 24)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: responsiveHeight(context, 24),
                children: [
                  SizedBox(
                    height: responsiveHeight(context, 24),
                    width: responsiveWidth(context, 24),
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        AppNavigatorService.pushReplacementNamed(context,
                            routeName: Routes.loginPage);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                  AuthHeadingWidget(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    wantedScreen: Routes.loginPage,
                    title: S.of(context).signtitle,
                    infoText: S.of(context).alreadyhaveanaccount,
                    actionText: S.of(context).login,
                  ),
                  SignUpFormWidget()
                ],
              ),
            ),
          ])),
        )));
  }
}
