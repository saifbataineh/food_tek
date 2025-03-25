import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static const String rememberMeKey = 'remember_me';

  static Future<void> setRememberMe(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(rememberMeKey, value);
  }

  static Future<bool> getRememberMe() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(rememberMeKey) ?? false;
  }
}
