import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/services/show_dialog_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/custom_form_field.dart';
import 'package:food_tek/features/authintication/shared/widgets/auth_heading_widget.dart';
import 'package:food_tek/generated/l10n.dart';

class ConfirmResetPasswordPage extends StatelessWidget {
  const ConfirmResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImageStrings.splashBackground),
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: responsiveWidth(
                context,
                44,
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: responsiveHeight(context, 15),
                  ),
                  Image(
                    image: AssetImage(AppImageStrings.appLogo),
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 46),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: responsiveHeight(context, 24),
                        horizontal: responsiveWidth(context, 24)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme.of(context).cardColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: responsiveHeight(context, 24),
                      children: [
                        SizedBox(
                          height: responsiveHeight(context, 24),
                          width: responsiveWidth(context, 24),
                          child: IconButton(
                            onPressed: () {
                              AppNavigatorService.pop(context);
                            },
                            icon: Icon(Icons.arrow_back),
                          ),
                        ),
                        AuthHeadingWidget(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            title: S.of(context).email,
                            actionText: S.of(context).login,
                            infoText: S.of(context).inforeset,
                            wantedScreen: Routes.loginPage),
                        CustomFormField(
                          controller: TextEditingController(),
                          label: S.of(context).new_password,
                          isPassword: true,
                        ),
                        CustomFormField(
                          controller: TextEditingController(),
                          label: S.of(context).confirm_new_password,
                          isPassword: true,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              ShowDialogService.showCongratsDialog(
                                  congrats: S.of(context).congratulations,
                                  congratsDescription:
                                      S.of(context).pass_reset_succesfuly,
                                  context: context);
                            },
                            child: Text(S.of(context).update_password),
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
        ),
      ),
    );
  }
}
