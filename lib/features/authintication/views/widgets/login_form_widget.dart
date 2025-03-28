import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/custom_form_field.dart';
import 'package:food_tek/features/authintication/views/widgets/check_box_with_text_widget.dart';
import 'package:food_tek/generated/l10n.dart';
import 'package:food_tek/core/services/shared_preferance_service.dart';

class LoginFormWidget extends StatelessWidget {
  LoginFormWidget({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: AutofillGroup(
        child: Column(
          spacing: responsiveHeight(context, 16),
          children: [
            CustomFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              label: S.of(context).email,
              autofillHints: [AutofillHints.email],
              hintText: 'example@example.com',
            ),
            CustomFormField(
              autofillHints: [AutofillHints.password],
              controller: passwordController,
              isPassword: true,
              label: S.of(context).password,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CheckBoxWithTextWidget(
                  text: S.of(context).rememberme,
                ),
                TextButton(
                  onPressed: () {
                    AppNavigatorService.pushNamed(context,
                        routeName: Routes.forgetPassPage);
                  },
                  child: Text(
                    S.of(context).forgetpassword,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.mainColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(

                onPressed: () async {
                  
                  // await SharedPrefHelper.setRememberMe();
                  AppNavigatorService.pushAndRemoveUntil(context,
                      routeName: Routes.navigationPage, arguments: 0);
                },
                child: Text(S.of(context).login),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
