
import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/home/models/person_model.dart';
import 'package:food_tek/features/person/views/widgets/my_account_profile_column_widget.dart';
import 'package:food_tek/features/person/views/widgets/notifications_profile_coulmn_widget.dart';
import 'package:food_tek/features/person/views/widgets/personal_information_widget.dart';
import 'package:food_tek/generated/l10n.dart';

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
          color: Theme.of(context).brightness== Brightness.dark? AppColors.black:AppColors.borderColor,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Text(
            S.of(context).more,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(color: AppColors.midnightShadow),
          ),
          ListTile(
            leading: Icon(Icons.help_outline, color: Theme.of(context).brightness== Brightness.dark?AppColors.borderColor: AppColors.iconBlackColor),
            title: Text(
              S.of(context).help_center,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text(
              S.of(context).log_out,
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



