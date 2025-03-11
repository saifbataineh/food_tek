import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_tek/core/app_image_strings.dart';
import 'package:food_tek/features/onboarding/onboarding_screen.dart';
import 'package:food_tek/features/slpash_screen/splash_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

