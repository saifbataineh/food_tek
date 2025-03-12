import 'package:flutter/material.dart';

class AppNavigatorService {
  static  pushReplacementNamed(BuildContext context,{required String routeName}){
    Navigator.pushReplacementNamed(context,routeName );

  }
}