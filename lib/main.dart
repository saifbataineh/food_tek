import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_tek/features/app/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Status bar color (transparent)
      systemNavigationBarColor:
          Colors.transparent, // Nav bar color (transparent)
      systemNavigationBarIconBrightness: Brightness.dark,
     
     ));
  runApp(const App());
}
