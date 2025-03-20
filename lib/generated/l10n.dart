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
  String get onboarding1_title {
    return Intl.message(
      'Welcome to Sahlah',
      name: 'onboarding1_title',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy a fast and smooth food delivery at your doorstep`
  String get onboarding1_text {
    return Intl.message(
      'Enjoy a fast and smooth food delivery at your doorstep',
      name: 'onboarding1_text',
      desc: '',
      args: [],
    );
  }

  /// `Get delivery on time`
  String get onboarding2_title {
    return Intl.message(
      'Get delivery on time',
      name: 'onboarding2_title',
      desc: '',
      args: [],
    );
  }

  /// `Order your favorite food within the palm of your hand and the zone of your comfort`
  String get onboarding2_text {
    return Intl.message(
      'Order your favorite food within the palm of your hand and the zone of your comfort',
      name: 'onboarding2_text',
      desc: '',
      args: [],
    );
  }

  /// `Choose your food`
  String get onboarding3_title {
    return Intl.message(
      'Choose your food',
      name: 'onboarding3_title',
      desc: '',
      args: [],
    );
  }

  /// `Order your favorite food within the palm of your hand and the zone of your comfort`
  String get onboarding3_text {
    return Intl.message(
      'Order your favorite food within the palm of your hand and the zone of your comfort',
      name: 'onboarding3_text',
      desc: '',
      args: [],
    );
  }

  /// `Turn on your location`
  String get turnloc_title {
    return Intl.message(
      'Turn on your location',
      name: 'turnloc_title',
      desc: '',
      args: [],
    );
  }

  /// `To continue, let your device turn on location, which uses Google’s location service`
  String get turnloc_text {
    return Intl.message(
      'To continue, let your device turn on location, which uses Google’s location service',
      name: 'turnloc_text',
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
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Don't have an account?`
  String get createaccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'createaccount',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message('Or', name: 'or', desc: '', args: []);
  }

  /// `Sign Up`
  String get signup {
    return Intl.message('Sign Up', name: 'signup', desc: '', args: []);
  }

  /// `remember me`
  String get rememberme {
    return Intl.message('remember me', name: 'rememberme', desc: '', args: []);
  }

  /// `Forgot Password ?`
  String get forgetpassword {
    return Intl.message(
      'Forgot Password ?',
      name: 'forgetpassword',
      desc: '',
      args: [],
    );
  }

  /// `Back to`
  String get back_to {
    return Intl.message('Back to', name: 'back_to', desc: '', args: []);
  }

  /// `Reset password`
  String get resetpassword {
    return Intl.message(
      'Reset password',
      name: 'resetpassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your E-mail or phone and we'll send you a link to get back into your account`
  String get enteremailorphonenumber {
    return Intl.message(
      'Enter your E-mail or phone and we\'ll send you a link to get back into your account',
      name: 'enteremailorphonenumber',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `example@example.com`
  String get emailhint {
    return Intl.message(
      'example@example.com',
      name: 'emailhint',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message('Send', name: 'send', desc: '', args: []);
  }

  /// `A 4-digit code has been sent to your email. Please enter it to verify.`
  String get verificationmessage {
    return Intl.message(
      'A 4-digit code has been sent to your email. Please enter it to verify.',
      name: 'verificationmessage',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message('Verify', name: 'verify', desc: '', args: []);
  }

  /// `Sign up`
  String get signtitle {
    return Intl.message('Sign up', name: 'signtitle', desc: '', args: []);
  }

  /// `already have an account? `
  String get alreadyhaveanaccount {
    return Intl.message(
      'already have an account? ',
      name: 'alreadyhaveanaccount',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get login {
    return Intl.message('login', name: 'login', desc: '', args: []);
  }

  /// `Want to try with my current password?`
  String get inforeset {
    return Intl.message(
      'Want to try with my current password?',
      name: 'inforeset',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get new_password {
    return Intl.message(
      'New Password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirm_new_password {
    return Intl.message(
      'Confirm New Password',
      name: 'confirm_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Update Passsword`
  String get update_password {
    return Intl.message(
      'Update Passsword',
      name: 'update_password',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations`
  String get congratulations {
    return Intl.message(
      'Congratulations',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `password reset succesfuly`
  String get pass_reset_succesfuly {
    return Intl.message(
      'password reset succesfuly',
      name: 'pass_reset_succesfuly',
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
