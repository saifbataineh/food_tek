import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/features/authintication/views/widgets/auth_custom_form_field.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 16,
        children: [
          AuthCustomFormField(
            label: "Full Name",
          ),
          AuthCustomFormField(
            label: "Email",
            hintText: 'example@example.com',
          ),
          AuthCustomFormField(
            label: "Birth of date",
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.date_range,
              ),
            ),
          ),
          AuthCustomFormField(
              label: "Phone Number",
              prefixIcon: DropdownButton(
                  value: 'baby',
                  items: [
                    DropdownMenuItem(
                      value: "baby",
                      child: Icon(Icons.abc),
                    ),
                    DropdownMenuItem(
                      value: "jordan",
                      child: Icon(
                        Icons.baby_changing_station,
                      ),
                    ),
                    DropdownMenuItem(
                      value: "canada",
                      child: Icon(Icons.cabin),
                    ),
                  ],
                  onChanged: (value) {})),
          AuthCustomFormField(
            suffixIcon:
                IconButton(onPressed: () {}, icon: Icon(Icons.visibility_off)),
            isPassword: true,
            label: "set Pasword",
          ),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Sign Up'),
            ),
          ),
        ],
      ),
    );
  }
}
