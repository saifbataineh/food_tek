import 'package:flutter/material.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/custom_form_field.dart';
import 'package:food_tek/features/authintication/views/widgets/birth_auth_custom_form_field_widget.dart';
import 'package:food_tek/features/authintication/views/widgets/phone_auth_custom_form_field_widget.dart';
import 'package:food_tek/generated/l10n.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: responsiveHeight(context, 16),
        children: [
          CustomFormField(
            controller: TextEditingController(),
            label: S.of(context).full_name,
          ),
          CustomFormField(
            keyboardType: TextInputType.emailAddress,
            controller: TextEditingController(),
            label: S.of(context).email,
            hintText: 'example@example.com',
          ),
          BirthAuthCustomFormFieldWidget(),
          //phone number field
          PhoneAuthCustomFormFieldWidget(),
          CustomFormField(
            controller: TextEditingController(),
            isPassword: true,
            label: S.of(context).set_password,
          ),
          SizedBox(
            width: responsiveWidth(context, 295),
            height: responsiveHeight(context, 48),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(S.of(context).register),
            ),
          ),
        ],
      ),
    );
  }
}
