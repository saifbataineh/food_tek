import 'package:food_tek/core/constants/shared_pref_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferanceService {
  static Future<bool> isFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final notFirstTime = prefs.getBool(SharedPrefKeys.notFirstTime) ?? false;
    if (!notFirstTime) {
      prefs.setBool(SharedPrefKeys.notFirstTime, true);
    }
    return notFirstTime;
  }

  static Future<void> setRememberMe(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(SharedPrefKeys.rememberMeKey, value);
  }

  static Future<bool> getRememberMe() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(SharedPrefKeys.rememberMeKey) ?? false;
  }
}
