import 'package:flutter/material.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/features/home/models/food_model.dart';
import 'package:food_tek/generated/l10n.dart';

class OrderNowButtonWidget extends StatelessWidget {
  const OrderNowButtonWidget({
    super.key,
    required this.foodItem,
  });
  final Food foodItem;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        AppNavigatorService.pushNamed(context,
            routeName: Routes.foodItemDescriptionPage,
            arguments: foodItem
            );
      },
      style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0)),
      child: Text(
        S.of(context).order_now,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
