import 'package:flutter/material.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/themes/app_theme.dart';
import 'package:food_tek/features/authintication/views/confirm_reset_password.dart';
import 'package:food_tek/features/authintication/views/login_page.dart';
import 'package:food_tek/features/authintication/views/reset_password_page.dart';
import 'package:food_tek/features/authintication/views/sign_up_page.dart';
import 'package:food_tek/features/onboarding/onboarding_page.dart';
import 'package:food_tek/features/onboarding/turn_on_location_page.dart';
import 'package:food_tek/features/slpash/views/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          elevatedButtonTheme: AppTheme.elevatedButtonTheme,
          textButtonTheme: AppTheme.textButtonTheme,
          textTheme: AppTheme.textStyle,
        ),
        initialRoute: Routes.splashPage,
        routes: {
          Routes.splashPage: (context) => SplashPage(),
          Routes.onboardingPage: (context) => OnboardingPage(),
          Routes.turnOnLocationPage: (context) => TurnOnLocationPage(),
          Routes.loginPage: (context) => LoginPage(),
          Routes.signUpPage: (context) => SignUpPage(),
          Routes.forgetPassPage: (cotenxt) => ResetPasswordPage(),
          Routes.confirmForgetPassPage: (cotenxt) => ConfirmResetPassword(),
        });
  }
}
