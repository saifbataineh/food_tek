import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/themes/app_theme.dart';
import 'package:food_tek/features/authintication/views/confirm_reset_password_page.dart';
import 'package:food_tek/features/authintication/views/login_page.dart';
import 'package:food_tek/features/authintication/views/reset_password_page.dart';
import 'package:food_tek/features/authintication/views/sign_up_page.dart';
import 'package:food_tek/features/cart/views/cart_page.dart';
import 'package:food_tek/features/filters/views/filters_page.dart';
import 'package:food_tek/features/food_details/views/food_detaials_page.dart';
import 'package:food_tek/features/home/views/main_page.dart';
import 'package:food_tek/features/navigation/views/navigation_page.dart';
import 'package:food_tek/features/onboarding/onboarding_page.dart';
import 'package:food_tek/features/onboarding/turn_on_location_page.dart';
import 'package:food_tek/features/slpash/views/splash_page.dart';
import 'package:food_tek/generated/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('en'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.light(primary: AppColors.mainColor),
        datePickerTheme: AppTheme.datePickerTheme,
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
        Routes.confirmForgetPassPage: (cotenxt) => ConfirmResetPasswordPage(),
        Routes.navigationPage: (cotenxt) => NavigationPage(),
        Routes.MainPage: (cotenxt) => MainPage(),
        Routes.foodItemDescriptionPage: (cotenxt) => FoodDetaialsPage(),
        Routes.filtersPage: (cotenxt) => FiltersPage(),
        Routes.cartPage: (cotenxt) => CartPage(),
      },
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: TextScaler.linear(1),
            ),
            child: child!);
      },
    );
  }
}
