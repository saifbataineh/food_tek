import 'package:flutter/material.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/authintication/views/widgets/auth_custom_form_field.dart';
import 'package:food_tek/features/authintication/views/widgets/birth_auth_custom_form_field_widget.dart';
import 'package:food_tek/features/authintication/views/widgets/phone_auth_custom_form_field_widget.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: responsiveHeight(context, 16),
        children: [
          AuthCustomFormField(
            controller: TextEditingController(),
            label: "Full Name",
          ),
          AuthCustomFormField(
            keyboardType: TextInputType.emailAddress,
            controller: TextEditingController(),
            label: "Email",
            hintText: 'example@example.com',
          ),
          BirthAuthCustomFormFieldWidget(),
          //phone number field
          PhoneAuthCustomFormFieldWidget(),
          AuthCustomFormField(
            controller: TextEditingController(),
            isPassword: true,
            label: "set Pasword",
          ),
          SizedBox(
            width: responsiveWidth(context, 295),
            height: responsiveHeight(context, 48),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Register'),
            ),
          ),
        ],
      ),
    );
  }
}
