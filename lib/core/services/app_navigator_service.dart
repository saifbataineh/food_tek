import 'package:flutter/material.dart';

class AppNavigatorService {
  static  pushReplacementNamed(BuildContext context,{required String routeName}){
    Navigator.pushReplacementNamed(context,routeName );

  }
  static  pushAndRemoveUntil(BuildContext context,{required String routeName}){
    Navigator.pushNamedAndRemoveUntil(context,routeName, (route) => false,);

  }
  static  pushNamed(BuildContext context,{required String routeName}){
    Navigator.pushNamed(context,routeName );

  }
  static  pop(BuildContext context){
    Navigator.pop(context);

  }
}