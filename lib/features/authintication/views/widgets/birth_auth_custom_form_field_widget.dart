import 'package:flutter/material.dart';
import 'package:food_tek/core/services/get_date_from_user_service.dart';
import 'package:food_tek/features/authintication/views/widgets/auth_custom_form_field.dart';

class BirthAuthCustomFormFieldWidget extends StatefulWidget {
  const BirthAuthCustomFormFieldWidget({
    super.key,
  });

  @override
  State<BirthAuthCustomFormFieldWidget> createState() =>
      _BirthAuthCustomFormFieldWidgetState();
}

class _BirthAuthCustomFormFieldWidgetState
    extends State<BirthAuthCustomFormFieldWidget> {
  String dateTime = '';
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AuthCustomFormField(
      controller: dateController,
      enabled: false,
      label: "Birth of date",
      suffixIcon: IconButton(
        
        onPressed: () async {
          dateTime = await GetDateFromUserService.showPicker(context: context);
          setState(() {
            dateController.text = dateTime;
          });
        },
        icon: Icon(
          Icons.date_range,
        ),
      ),
    );
  }
}
