import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/custom_form_field.dart';
import 'package:food_tek/features/home/models/person_model.dart';
import 'package:food_tek/features/person/views/widgets/personal_information_widget.dart';
import 'package:food_tek/generated/l10n.dart';

class UpdateProileScreen extends StatelessWidget {
  const UpdateProileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<PersonModel> personList = [
      PersonModel(
          image: AppImageStrings.person,
          name: "Zaid Abu Alhija",
          email: "zaidabualhija@gmail.com")
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).editProfile),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: responsiveWidth(context, 24)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PersonalInformationWidget(
                personalModel: personList[0],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.borderColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: responsiveHeight(context, 12),
                      horizontal: responsiveWidth(context, 12)),
                  child: Column(
                    spacing: responsiveHeight(context, 10),
                    children: [
                      CustomFormField(
                        label: S.of(context).username,
                        controller: TextEditingController(),
                      ),
                      CustomFormField(
                        keyboardType: TextInputType.emailAddress,
                        label: S.of(context).email,
                        controller: TextEditingController(),
                      ),
                      CustomFormField(
                        keyboardType: TextInputType.numberWithOptions(),
                        label: S.of(context).phone_number,
                        controller: TextEditingController(),
                      ),
                      CustomFormField(
                        isPassword: true,
                        label: S.of(context).password,
                        controller: TextEditingController(),
                      ),
                      CustomFormField(
                        label: S.of(context).address,
                        controller: TextEditingController(),
                      ),
                      SizedBox(
                          width: responsiveWidth(context, 230),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text(S.of(context).update)))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
