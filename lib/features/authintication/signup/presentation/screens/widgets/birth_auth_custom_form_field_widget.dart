import 'package:flutter/material.dart';
import 'package:food_tek/core/extensions/string_extension.dart';
import 'package:food_tek/core/services/get_date_from_user_service.dart';
import 'package:food_tek/core/widgets/custom_form_field.dart';
import 'package:food_tek/generated/l10n.dart';

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
    return CustomFormField(
      validator: (value) {
        if (value.isNullOrEmpty()) {
          return "The birth date can't be empty";
        }
        return null;
      },
      controller: dateController,
      enabled: false,
      label: S.of(context).birth_of_date,
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
