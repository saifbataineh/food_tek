import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/features/authintication/views/widgets/auth_custom_form_field.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 16,
        children: [
          AuthCustomFormField(
            label: "Email",
            hintText: 'example@example.com',
          ),
          AuthCustomFormField(
            isPassword: true,
            label: "pasword",
          ),
          Row(
            spacing: 5,
            children: [
              SizedBox(
                height: 15,
                width: 15,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              Text("remeber me"),
              Spacer(),
              TextButton(
                onPressed: () {
                  AppNavigatorService.pushNamed(context,
                      routeName: Routes.forgetPassPage);
                },
                child: Text(
                  "Forgot Password ?",
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
              onPressed: () {
                //TODO:change to push and remove until
                AppNavigatorService.pushReplacementNamed(context,
                    routeName: Routes.navigationPage);
              },
              child: Text('Log In'),
            ),
          ),
        ],
      ),
    );
  }
}
