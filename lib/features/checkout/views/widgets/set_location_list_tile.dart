import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/services/location_service.dart';

class SetLocationListTile extends StatefulWidget {
  const SetLocationListTile({
    super.key,
  });

  @override
  State<SetLocationListTile> createState() => _SetLocationListTileState();
}

class _SetLocationListTileState extends State<SetLocationListTile> {
  String groupValue = '';
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        onTap: () {
          setState(() {
            groupValue = '1';
          });
        },
        contentPadding: EdgeInsets.all(0),
        subtitle: Text(
          'Georgia, Batumi',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontSize: 13, fontWeight: FontWeight.w400),
        ),
        
        title: Text(
          "88 Zurab Gorgiladze St",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(fontSize: 15, fontWeight: FontWeight.w400),
        ),
        leading: Image.asset(
          groupValue == '1'
              ? AppImageStrings.locationSelectedIcon
              : AppImageStrings.locationUnSelectedIcon,
        ),
      ),
      ListTile(
        onTap: () {
          setState(() {
            groupValue = '2';
          });
        },
        contentPadding: EdgeInsets.all(0),
        trailing: TextButton(
          onPressed: () async {
            await LocationService.checkEnabledAndPermission();
            AppNavigatorService.pushNamed(context,
                routeName: Routes.setLocationPage);
          },
          style: TextButton.styleFrom(
              foregroundColor: AppColors.mainColor, padding: EdgeInsets.all(0)),
          child: Text(
            "change",
          ),
        ),
        subtitle: Text(
          'Georgia, Batumi',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontSize: 13, fontWeight: FontWeight.w400),
        ),
        title: Text(
          "88 Zurab Gorgiladze St",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(fontSize: 15, fontWeight: FontWeight.w400),
        ),
        leading: Image.asset(
          groupValue == '2'
              ? AppImageStrings.locationSelectedIcon
              : AppImageStrings.locationUnSelectedIcon,
        ),
      ),
    ]);
  }
}
