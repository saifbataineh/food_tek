
import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/home/models/person_model.dart';
import 'package:food_tek/features/person/views/widgets/my_account_profile_column_widget.dart';
import 'package:food_tek/features/person/views/widgets/notifications_profile_coulmn_widget.dart';
import 'package:food_tek/features/person/views/widgets/personal_information_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}



class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    List<PersonModel> personList = [
      PersonModel(
          image: AppImageStrings.person,
          name: "Zaid Abu Alhija",
          email: "zaidabualhija@gmail.com")
    ];
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsiveWidth(context, 24)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PersonalInformationWidget(
                personalModel: personList[0],
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              MyAccountProfileColumnWidget(),
              SizedBox(
                height: responsiveHeight(context, 16),
              ),
              NotifiationsProfileColumnWidget(),
              SizedBox(
                height: responsiveHeight(context, 16),
              ),
              MoreProfileColumnWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class MoreProfileColumnWidget extends StatelessWidget {
  const MoreProfileColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.borderColor,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Text(
            "More",
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(color: AppColors.midnightShadow),
          ),
          ListTile(
            leading: Icon(Icons.help_outline, color: Colors.black),
            title: Text(
              "Help Center",
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text(
              "Log Out",
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: AppColors.hotRed),
            ),
          ),
        ],
      ),
    );
  }
}



