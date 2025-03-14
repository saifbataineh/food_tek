import 'package:flutter/material.dart';

class AuthCustomFormField extends StatelessWidget {
  const AuthCustomFormField({
    super.key,
    required this.label,
    this.isPassword = false,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
  });

  final String label;
  final bool isPassword;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        TextFormField(
          obscureText: isPassword,
          obscuringCharacter: '*',
          style: TextStyle(),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 12.5,
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
