import 'package:flutter/material.dart';

class AppNavigatorService {
  static  pushNamed(BuildContext context,{required String routeName}){
    Navigator.pushNamed(context,routeName );

  }
}