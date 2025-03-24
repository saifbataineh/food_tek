import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';

class AddRemoveToCartWidget extends StatefulWidget {
  const AddRemoveToCartWidget({super.key, this.minusBackgroundColor,this.iconSize, this.fontSize});
  final double? iconSize;
  final double? fontSize;
  final Color? minusBackgroundColor;

  @override
  State<AddRemoveToCartWidget> createState() => _AddRemoveToCartWidgetState();
}

class _AddRemoveToCartWidgetState extends State<AddRemoveToCartWidget> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            if (quantity < 1) {
              return;
            }
            setState(() {
              quantity--;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color:widget.minusBackgroundColor,
                border: Border.all(color: AppColors.mainColor),
                borderRadius: BorderRadius.circular(12)),
            child: Icon(
              Icons.remove,
              color: AppColors.mainColor,
              size: widget.iconSize,
            ),
          ),
        ),
        Text(
          "$quantity",
          style: TextStyle(fontSize: widget.fontSize,color: Colors.black),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              quantity++;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(12)),
            child: Icon(
              size: widget.iconSize,
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
