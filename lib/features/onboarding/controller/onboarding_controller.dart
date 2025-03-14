/* import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum OnboardingState { initial, onBoarding, home }

class AppCubit extends Cubit<OnboardingState> {
  AppCubit() : super(OnboardingState.initial) {
    checkOnboarding();
  }

  Future<void> checkOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seenOnboarding = prefs.getBool('seenOnboarding') ?? false;
    await Future.delayed(Duration(seconds: 2));  
    
    if (seenOnboarding) {
      emit(OnboardingState.home);
    } else {
      emit(OnboardingState.onBoarding);
    }
  }

  Future<void> completeOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('seenOnboarding', true);
    emit(OnboardingState.home);
  }
}

 */