import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/controller/onboarding_controller.dart';
import 'package:food_tek/features/onboarding/onboarding_screen.dart';
import 'package:food_tek/features/slpash_screen/splash_screen.dart';
import 'package:food_tek/signin.dart';
 
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyApp(),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocBuilder<AppCubit, OnboardingState>(
        builder: (context, state) {
          if (state == OnboardingState.initial) {
            return SplashScreen();  
          } else if (state == OnboardingState.onBoarding) {
            return OnboardingScreen();  
          } else {
            return Signin();  
          }
        },
      ),
    );
  }
}
