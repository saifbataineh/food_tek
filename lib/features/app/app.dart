import 'package:flutter/material.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/themes/app_text_theme.dart';
import 'package:food_tek/features/authintication/views/login_page.dart';
import 'package:food_tek/features/authintication/views/sign_up_page.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          elevatedButtonTheme: AppTheme.elevatedButtonTheme,textTheme: AppTheme.textStyle,),

        initialRoute: Routes.loginPage,
        routes: {
          Routes.loginPage: (context) => LoginPage()
          ,Routes.signUpPage: (context) => SignUpPage()
          
          });
  }
}
