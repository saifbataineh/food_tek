import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/authintication/views/widgets/pin_code_field.dart';
import 'package:food_tek/generated/l10n.dart';

class ShowDialogService {
  static showActionDialog({
    required BuildContext context,
  }) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: responsiveWidth(context, 24),
                  vertical: responsiveHeight(context, 24)),
              child: Column(
                spacing: responsiveHeight(context, 24),
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
                    width: responsiveWidth(context, 295),
                    child: ElevatedButton(
                      onPressed: () {
                        AppNavigatorService.pop(context);
                        AppNavigatorService.pushReplacementNamed(context,
                            routeName: Routes.confirmForgetPassPage);
                      },
                      child: Text(S.of(context).confirm_password),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  static showCongratsDialog({required BuildContext context}) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AppImageStrings.passwordUpdatedSuccessfullyLogo),
                  Text(
                    S.of(context).congratulations,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    S.of(context).pass_reset_succesfuly,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
