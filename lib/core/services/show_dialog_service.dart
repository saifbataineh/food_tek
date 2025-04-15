import 'dart:ui';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/congrats_widget.dart';

class ShowDialogService {
  static Future<bool?> showActionDialog(
      {required BuildContext context,
      final String? image,
      required final String description,
      required final String actionButtonText,
      final Widget? extraActioncontent,
      required final VoidCallback onPressed}) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
            child: Dialog(
              backgroundColor: Theme.of(context).cardColor,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: responsiveWidth(context, 24),
                    vertical: responsiveHeight(context, 24)),
                child: Column(
                  spacing: responsiveHeight(context, 24),
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (image != null) Image.asset(image),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        description,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    if (extraActioncontent != null) extraActioncontent,
                    SizedBox(
                      width: responsiveWidth(context, 295),
                      child: ElevatedButton(
                        onPressed: onPressed,
                        child: Text(actionButtonText),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  static showCongratsDialog(
      {required BuildContext context,
      required String congrats,
      required String congratsDescription}) {
    showDialog(
        context: context,
        builder: (context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
            child: Dialog(
              backgroundColor: Colors.transparent,
              child: CongratsWidget(
                congratsDescriptionfontSize: 22,
                textColor: Colors.white,
                congrats: congrats,
                congratsDescription: congratsDescription,
              ),
            ),
          );
        });
  }
}
