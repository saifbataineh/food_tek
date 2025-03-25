import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/services/show_dialog_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/custom_form_field.dart';
import 'package:food_tek/features/authintication/views/widgets/pin_code_field.dart';
import 'package:food_tek/generated/l10n.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: responsiveHeight(context, 19),
                ),
                Image(
                  image: AssetImage(AppImageStrings.appLogo),
                ),
                SizedBox(
                  height: responsiveHeight(context, 150),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: responsiveWidth(context, 24),
                    vertical: responsiveHeight(context, 24),
                  ),
                  width: responsiveWidth(context, 343),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Column(
                    spacing: responsiveHeight(context, 24),
                    children: [
                      Row(
                        spacing: responsiveWidth(context, 5),
                        children: [
                          SizedBox(
                            height: responsiveHeight(context, 24),
                            width: responsiveWidth(context, 24),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                AppNavigatorService.pop(context);
                              },
                              icon: Icon(Icons.arrow_back),
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: S.of(context).back_to,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall),
                                TextSpan(
                                    text: " ${S.of(context).login}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(color: AppColors.mainColor)),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        S.of(context).resetpassword,
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(letterSpacing: -2),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        child: Text(
                          textAlign: TextAlign.center,
                          S.of(context).enteremailorphonenumber,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      CustomFormField(
                        controller: TextEditingController(),
                        label: S.of(context).email,
                        hintText: S.of(context).emailhint,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            ShowDialogService.showActionDialog(
                                extraActioncontent: PinCodeField(),
                                onPressed: () {
                                  AppNavigatorService.pushReplacementNamed(
                                      context,
                                      routeName: Routes.confirmForgetPassPage);
                                },
                                actionButtonText:
                                    S.of(context).confirm_password,
                                description: S.of(context).verificationmessage,
                                image: AppImageStrings.messageSentLogo,
                                context: context);
                          },
                          child: Text(S.of(context).send),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
