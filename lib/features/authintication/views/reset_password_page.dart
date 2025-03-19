import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/features/authintication/views/widgets/auth_custom_form_field.dart';
import 'package:food_tek/features/authintication/views/widgets/pin_code_field.dart';
import 'package:food_tek/generated/l10n.dart';  

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

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
                height: height * 0.5,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  spacing: 24,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            AppNavigatorService.pop(context);
                          },
                          icon: Icon(Icons.arrow_back),
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: S.of(context).resetpassword,
                              style: Theme.of(context).textTheme.headlineSmall),
                        ]))
                      ],
                    ),
                    Text(
                      S.of(context).resetpassword,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        textAlign: TextAlign.center,
                        S.of(context).enteremailorphonenumber,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    AuthCustomFormField(
                      label: S.of(context).email,
                      hintText: S.of(context).emailhint,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  backgroundColor: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(AppImageStrings.messageSentLogo),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              textAlign: TextAlign.center,
                                              S.of(context).verificationmessage),
                                        ),
                                        PinCodeField(),
                                        SizedBox(
                                          width: width * 0.6,
                                          height: 48,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              AppNavigatorService.pop(context);
                                              AppNavigatorService.pushReplacementNamed(context, routeName: Routes.confirmForgetPassPage);
                                            },
                                            child: Text(S.of(context).confirm_password),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Text(S.of(context).send),
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
