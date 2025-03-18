// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `hello world!!!`
  String get title {
    return Intl.message('hello world!!!', name: 'title', desc: '', args: []);
  }

  /// `Welcome to Sahlah`
  String get onBoarding1_title {
    return Intl.message(
      'Welcome to Sahlah',
      name: 'onBoarding1_title',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy a fast and smooth food delivery at your doorstep`
  String get onBoarding1_text {
    return Intl.message(
      'Enjoy a fast and smooth food delivery at your doorstep',
      name: 'onBoarding1_text',
      desc: '',
      args: [],
    );
  }

  /// `Get delivery on time`
  String get onBoarding2_title {
    return Intl.message(
      'Get delivery on time',
      name: 'onBoarding2_title',
      desc: '',
      args: [],
    );
  }

  /// `Order your favorite food within the palm of your hand and the zone of your comfort`
  String get onBoarding2_text {
    return Intl.message(
      'Order your favorite food within the palm of your hand and the zone of your comfort',
      name: 'onBoarding2_text',
      desc: '',
      args: [],
    );
  }

  /// `Choose your food`
  String get onBoarding3_title {
    return Intl.message(
      'Choose your food',
      name: 'onBoarding3_title',
      desc: '',
      args: [],
    );
  }

  /// `Order your favorite food within the palm of your hand and the zone of your comfort`
  String get onBoarding3_text {
    return Intl.message(
      'Order your favorite food within the palm of your hand and the zone of your comfort',
      name: 'onBoarding3_text',
      desc: '',
      args: [],
    );
  }

  /// `Turn on your location`
  String get turnLoc_title {
    return Intl.message(
      'Turn on your location',
      name: 'turnLoc_title',
      desc: '',
      args: [],
    );
  }

  /// `To continue, let your device turn on location, which uses Google’s location service`
  String get turnLoc_text {
    return Intl.message(
      'To continue, let your device turn on location, which uses Google’s location service',
      name: 'turnLoc_text',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip_button {
    return Intl.message('Skip', name: 'skip_button', desc: '', args: []);
  }

  /// `Continue`
  String get continue1 {
    return Intl.message('Continue', name: 'continue1', desc: '', args: []);
  }

  /// `Yes, Turn It On`
  String get continue2 {
    return Intl.message(
      'Yes, Turn It On',
      name: 'continue2',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get Cancel {
    return Intl.message('Cancel', name: 'Cancel', desc: '', args: []);
  }

  /// `Login`
  String get Login {
    return Intl.message('Login', name: 'Login', desc: '', args: []);
  }

  /// `Don't have an account?`
  String get createAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message('Or', name: 'or', desc: '', args: []);
  }

  /// `Sign Up`
  String get SignUp {
    return Intl.message('Sign Up', name: 'SignUp', desc: '', args: []);
  }

  /// `remember me`
  String get rememberMe {
    return Intl.message('remember me', name: 'rememberMe', desc: '', args: []);
  }

  /// `Forgot Password ?`
  String get forgetPassword {
    return Intl.message(
      'Forgot Password ?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get LogIn {
    return Intl.message('Log In', name: 'LogIn', desc: '', args: []);
  }

  /// `Back to Login page?`
  String get backToLoginPage {
    return Intl.message(
      'Back to Login page?',
      name: 'backToLoginPage',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get resetPassword {
    return Intl.message(
      'Reset password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your E-mail or phone and we'll send you a link to get back into your account`
  String get enterEmailOrPhone {
    return Intl.message(
      'Enter your E-mail or phone and we\'ll send you a link to get back into your account',
      name: 'enterEmailOrPhone',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `example@example.com`
  String get emailHint {
    return Intl.message(
      'example@example.com',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message('Send', name: 'send', desc: '', args: []);
  }

  /// `A 4-digit code has been sent to your email. Please enter it to verify.`
  String get verificationMessage {
    return Intl.message(
      'A 4-digit code has been sent to your email. Please enter it to verify.',
      name: 'verificationMessage',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message('Verify', name: 'verify', desc: '', args: []);
  }

  /// `Sign up`
  String get signUpTitle {
    return Intl.message('Sign up', name: 'signUpTitle', desc: '', args: []);
  }

  /// `already have an account? `
  String get alreadyHaveAnAccount {
    return Intl.message(
      'already have an account? ',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get login {
    return Intl.message('login', name: 'login', desc: '', args: []);
  }

  /// `Want to try with my current password?`
  String get infoReset {
    return Intl.message(
      'Want to try with my current password?',
      name: 'infoReset',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
