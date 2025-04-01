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
import 'package:food_tek/features/checkout/views/congrats_check_out_page.dart';
import 'package:food_tek/features/checkout/views/check_out_page.dart';
import 'package:food_tek/features/checkout/views/pay_order_page.dart';
import 'package:food_tek/features/checkout/views/set_location_page.dart';
import 'package:food_tek/features/favorite/controllers/cubit/favorite_cubit.dart';
import 'package:food_tek/features/filters/views/filters_page.dart';
import 'package:food_tek/features/food_details/views/food_detaials_page.dart';
import 'package:food_tek/features/home/views/home_page.dart';
import 'package:food_tek/features/navigation/views/navigation_page.dart';
import 'package:food_tek/features/onboarding/onboarding_page.dart';
import 'package:food_tek/features/onboarding/turn_on_location_page.dart';
import 'package:food_tek/features/person/views/update_proile_screen.dart';
import 'package:food_tek/features/slpash/controllers/cubit/app_cubit.dart';
import 'package:food_tek/features/slpash/views/splash_page.dart';
import 'package:food_tek/features/track/views/chat_page.dart';
import 'package:food_tek/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/features/track/views/order_details.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        Routes.splashPage: (context) => BlocProvider(
              create: (context) => AppCubit(),
              child: SplashPage(),
            ),
        Routes.onboardingPage: (context) => OnboardingPage(),
        Routes.turnOnLocationPage: (context) => TurnOnLocationPage(),
        Routes.loginPage: (context) => LoginPage(),
        Routes.signUpPage: (context) => SignUpPage(),
        Routes.forgetPassPage: (cotenxt) => ResetPasswordPage(),
        Routes.confirmForgetPassPage: (cotenxt) => ConfirmResetPasswordPage(),
        Routes.navigationPage: (cotenxt) {
          return BlocProvider(
            create: (context) => FavoriteCubit(),
            child: NavigationPage(),
          );
        },
        Routes.homePage: (cotenxt) => HomePage(),
        Routes.foodItemDescriptionPage: (cotenxt) => FoodDetaialsPage(),
        Routes.filtersPage: (cotenxt) => FiltersPage(),
        Routes.cartPage: (cotenxt) => CartPage(),
        Routes.orderDetails: (context) => OrderDetails(),
        Routes.updateProfilePage: (cotenxt) => UpdateProileScreen(),
        Routes.checkoutPage: (cotenxt) => CheckOutPage(),
        Routes.payOrderPage: (cotenxt) => PayOrderPage(),
        Routes.congratsCheckOutPage: (cotenxt) => CongratsCheckOutPage(),
        Routes.setLocationPage: (cotenxt) => SetLocationPage(),
        Routes.chatPage: (cotenxt) => ChatPage(),
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
