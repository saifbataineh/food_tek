import 'package:flutter/material.dart';

class AppNavigatorService {
  static pushReplacementNamed(BuildContext context,
      {required String routeName}) {
    Navigator.pushReplacementNamed(context, routeName);
  }

  static pushAndRemoveUntil(BuildContext context, {required String routeName,int? arguments}) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      routeName,
      arguments: arguments,
      (route) => false,
    );
  }

  static pushNamed(BuildContext context,
      {required String routeName, Object? arguments}) {
    Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  static pop(BuildContext context) {
    Navigator.pop(context);
  }
}
