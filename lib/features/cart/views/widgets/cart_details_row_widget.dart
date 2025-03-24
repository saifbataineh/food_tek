import 'package:flutter/material.dart';

class CartDeatilsRowWidget extends StatelessWidget {
  const CartDeatilsRowWidget({
    super.key,
    required this.category,
    required this.price,
    this.textStyle
  });
  final String category;
  final String price;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
      children: [
        Text(
          category,
          style:textStyle?? Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(
                color: Colors.white,
                fontWeight:
                    FontWeight.w400,
              ),
        ),
        Text(
          "$price \$",
          style: textStyle?? Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(
                color: Colors.white,
                fontWeight:
                    FontWeight.w400,
              ),
        ),
      ],
    );
  }
}
