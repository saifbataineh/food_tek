import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/custom_form_field.dart';
import 'package:food_tek/features/home/models/person_model.dart';
import 'package:food_tek/features/person/views/widgets/personal_information_widget.dart';

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
        title: const Text("Edit Profile"),
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
                        label: "UserName",
                        controller: TextEditingController(),
                      ),
                      CustomFormField(
                        keyboardType: TextInputType.emailAddress,
                        label: "Email",
                        controller: TextEditingController(),
                      ),
                      CustomFormField(
                        keyboardType: TextInputType.numberWithOptions(),
                        label: "Phone Number",
                        controller: TextEditingController(),
                      ),
                      CustomFormField(
                        isPassword: true,
                        label: "Password",
                        controller: TextEditingController(),
                      ),
                      CustomFormField(
                        label: "Address",
                        controller: TextEditingController(),
                      ),
                      SizedBox(
                          width: responsiveWidth(context, 230),
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("Update")))
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
