import 'package:shared_preferences/shared_preferences.dart';

class Warningpref{
  static bool? isWarning=false;

  static Future<void> setWarning(bool warning) async{
    final SharedPreferences warningPrefs = await SharedPreferences.getInstance();
    await warningPrefs.setBool('isWarning', warning);
    isWarning= await warningPrefs.getBool('isWarning');
    print(isWarning);
  }
  // static Future<bool?> getWarning() async{
  //   final SharedPreferences warningPrefs = await SharedPreferences.getInstance();
  //   isWarning = warningPrefs.getBool('isWarning');
  //   return isWarning;
  // }
}