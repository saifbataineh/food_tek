import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/extensions/string_extension.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/custom_form_field.dart';
import 'package:food_tek/features/authintication/views/widgets/birth_auth_custom_form_field_widget.dart';
import 'package:food_tek/features/authintication/views/widgets/phone_auth_custom_form_field_widget.dart';
import 'package:food_tek/generated/l10n.dart';

class SignUpFormWidget extends StatefulWidget {
  const SignUpFormWidget({super.key});

  @override
  State<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  @override
  void dispose() {
    fullNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: AutofillGroup(
        child: Column(
          spacing: responsiveHeight(context, 16),
          children: [
            //fullname
            CustomFormField(
              validator: (value) {
                if (value.isNullOrEmpty()) {
                  return "The Name can't be empty";
                }
                return null;
              },
              controller: fullNameController,
              label: S.of(context).full_name,
            ),
            //email
            CustomFormField(
              validator: (value) {
                if (value.isNullOrEmpty()) {
                  return "The Email can't be empty";
                }
                if (!value.isValidEmail()) {
                  return "please enter a valid email";
                }
                return null;
              },
              autofillHints: [AutofillHints.email],
              keyboardType: TextInputType.emailAddress,
              controller: TextEditingController(),
              label: S.of(context).email,
              hintText: 'example@example.com',
            ),
            BirthAuthCustomFormFieldWidget(),
            //phone number field
            PhoneAuthCustomFormFieldWidget(),
            CustomFormField(
              validator: (value) {
                if (value.isNullOrEmpty()) {
                  return "The password can't be empty";
                }
                if (!value.isStrongPassword()) {
                  return "please enter a strong password";
                }
                return null;
              },
              autofillHints: [AutofillHints.newPassword],
              controller: TextEditingController(),
              isPassword: true,
              label: S.of(context).set_password,
            ),
            SizedBox(
              width: responsiveWidth(context, 295),
              height: responsiveHeight(context, 48),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    AppNavigatorService.pushReplacementNamed(context,
                        routeName: Routes.loginPage);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          textAlign: TextAlign.center,
                          "Acoount Created successfull",
                        ),
                        backgroundColor: AppColors.redyBlack,
                      ),
                    );
                  }
                },
                child: Text(S.of(context).register),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
