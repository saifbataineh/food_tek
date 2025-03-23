import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class AddQuantityWidget extends StatefulWidget {
  const AddQuantityWidget({
    super.key,
  });

  @override
  State<AddQuantityWidget> createState() => _AddQuantityWidgetState();
}

class _AddQuantityWidgetState extends State<AddQuantityWidget> {
  int quantity=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: responsiveWidth(context, 115),
      child: Column(
        spacing: responsiveHeight(context, 12),
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Quantity",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: responsiveWidth(context, 32),
                height: responsiveHeight(context, 32),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColors.mainColor),
                    borderRadius: BorderRadius.circular(12)),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  color: AppColors.mainColor,
                  onPressed: () {
                      if (quantity<=0) {
                        return;
                      }
                    setState(() {
                      quantity--;
                    });
                  },
                  icon: Icon(Icons.remove),
                ),
              ),
              Text(
                "$quantity",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Container(
                width: responsiveWidth(context, 32),
                height: responsiveHeight(context, 32),
                decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(12)),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                     setState(() {
                      quantity++;
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
