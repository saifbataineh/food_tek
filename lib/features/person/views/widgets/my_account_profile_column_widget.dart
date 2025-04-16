import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/generated/l10n.dart';

class MyAccountProfileColumnWidget extends StatelessWidget {
  const MyAccountProfileColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color:Theme.of(context).brightness== Brightness.dark?AppColors.black: AppColors.borderColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 12),
            vertical: responsiveHeight(context, 12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).my_account,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Theme.of(context).brightness== Brightness.dark?AppColors.borderColor:AppColors.midnightShadow),
            ),
            ListTile(
              onTap: () {
                AppNavigatorService.pushNamed(context,
                    routeName: Routes.updateProfilePage);
              },
              leading: Icon(
                
                Icons.person_search_outlined,
                color:  Theme.of(context).brightness== Brightness.dark?AppColors.borderColor: AppColors.iconBlackColor,
              ),
              title: Text(S.of(context).personal_information,
                  style: Theme.of(context).textTheme.labelSmall),
            ),
            ListTile(
              leading: Icon(Icons.language, color:Theme.of(context).brightness== Brightness.dark?AppColors.borderColor: AppColors.iconBlackColor),
              title: Text(S.of(context).language,
                  style: Theme.of(context).textTheme.labelSmall),
              trailing:
              //TODO: CHANGE WHEN CHANGE LAGNUAGE
                  Text("عربية", style: Theme.of(context).textTheme.labelSmall),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip, color: Theme.of(context).brightness== Brightness.dark?AppColors.borderColor: AppColors.iconBlackColor),
              title: Text(S.of(context).privacy_policy,
                  style: Theme.of(context).textTheme.labelSmall),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Theme.of(context).brightness== Brightness.dark?AppColors.borderColor: AppColors.iconBlackColor),
              title: Text(S.of(context).setting,
                  style: Theme.of(context).textTheme.labelSmall),
            ),
          ],
        ),
      ),
    );
  }
}
