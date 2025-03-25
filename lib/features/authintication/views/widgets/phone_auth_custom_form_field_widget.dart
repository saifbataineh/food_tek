import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/widgets/custom_form_field.dart';
import 'package:food_tek/generated/l10n.dart';

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
  String? countryCode;
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomFormField(
      keyboardType: TextInputType.phone,
      controller: phoneController,
      label: S.of(context).phone_number,
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
              style: Theme.of(context).textTheme.headlineSmall,
              hint: Text(
                S.of(context).select,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
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
