import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/features/slpash/controllers/cubit/app_cubit.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    super.key,
  });

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      context.read<AppCubit>().checkIsFirstTime();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppCubit, AppState>(
      listener: (context, state) {
        if (state is UserNotFirstTimeState) {
          AppNavigatorService.pushReplacementNamed(context,
              routeName: Routes.loginPage);
        }
        if (state is UserFirstTimeState) {
          AppNavigatorService.pushReplacementNamed(context,
              routeName: Routes.onboardingPage);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            AppImageStrings.splashBackground,
          ))),
          child: Center(
            child: Image.asset(
              AppImageStrings.appLogo,
            ),
          ),
        ),
      ),
    );
  }
}
