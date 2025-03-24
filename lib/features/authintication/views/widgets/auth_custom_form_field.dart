import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class AuthCustomFormField extends StatefulWidget {
  const AuthCustomFormField({
    super.key,
    required this.label,
    this.isPassword = false,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    required this.controller,
    this.enabled = true,
    this.keyboardType,
  });

  final String label;
  final bool isPassword;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController controller;
  final bool enabled;
  final TextInputType? keyboardType;
  @override
  State<AuthCustomFormField> createState() => _AuthCustomFormFieldState();
}

class _AuthCustomFormFieldState extends State<AuthCustomFormField> {
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        TextFormField(
          keyboardType: widget.keyboardType,
          readOnly: !widget.enabled,
          controller: widget.controller,
          obscureText: widget.isPassword ? isObsecure : false,
          obscuringCharacter: '*',
          style: Theme.of(context)
              .textTheme
              .bodySmall!,
              
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: responsiveWidth(context, 14),
              vertical: responsiveHeight(context, 12.5),
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObsecure = !isObsecure;
                      });
                    },
                    icon: Icon(
                        isObsecure ? Icons.visibility : Icons.visibility_off),
                  )
                : widget.suffixIcon,
            prefixIcon: widget.prefixIcon,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.formFieldBorderColor),
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.formFieldBorderColor),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: widget.hintText,
          ),
        ),
      ],
    );
  }
}
