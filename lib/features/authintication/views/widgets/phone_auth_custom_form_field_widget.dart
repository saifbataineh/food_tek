import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/features/authintication/views/widgets/auth_custom_form_field.dart';

class PhoneAuthCustomFormFieldWidget extends StatefulWidget {
  const PhoneAuthCustomFormFieldWidget({
    super.key,
  });

  @override
  State<PhoneAuthCustomFormFieldWidget> createState() =>
      _PhoneAuthCustomFormFieldWidgetState();
}

class _PhoneAuthCustomFormFieldWidgetState
    extends State<PhoneAuthCustomFormFieldWidget> {
  String? countryCode = "962";
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AuthCustomFormField(
      keyboardType: TextInputType.phone,
      controller: phoneController,
      label: "Phone Number",
      prefixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: AppColors.formFieldBorderColor,
                  width: 2.0, // Width of the left line
                ),
              ),
            ),
            child: DropdownButton<String>(
              underline: SizedBox.shrink(),
              value: countryCode,
              items: [
                DropdownMenuItem<String>(
                  value: "1",
                  child: Text("+1"),
                ),
                DropdownMenuItem<String>(
                  value: "2",
                  child: Text("+2"),
                ),
                DropdownMenuItem<String>(
                  value: "970",
                  child: Text("+970"),
                ),
                DropdownMenuItem<String>(
                  value: "962",
                  child: Text("+962"),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  countryCode = value ?? "1";
                });
              },
            ),
          ),
          Text(countryCode != null ? "($countryCode)" : ""),
        ],
      ),
    );
  }
}
