import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/routes/app_router.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/features/authintication/views/widgets/auth_custom_form_field.dart';
import 'package:food_tek/generated/l10n.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 16,
        children: [
          AuthCustomFormField(
            label: S.of(context).email,
            hintText: 'example@example.com',
          ),
          AuthCustomFormField(
            isPassword: true,
            label: S.of(context).password,
          ),
          Row(
            spacing: 5,
            children: [
              SizedBox(
                height: 15,
                width: 15,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              Text(S.of(context).rememberme),
              Spacer(),
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
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(S.of(context).login),
            ),
          ),
        ],
      ),
    );
  }
}
