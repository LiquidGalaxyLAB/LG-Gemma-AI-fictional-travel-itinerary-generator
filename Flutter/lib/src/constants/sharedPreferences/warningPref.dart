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

class PersonalityPref{
  static int personality=2;
  static int tourismInterest=2;
  static int natureVsCity=2;
  static int adventureRelaxation=2;
  static int foodie=2;

  static void setPersonalityPreferences({
    int personality = 2,
    int tourismInterest = 2,
    int natureVsCity = 2,
    int adventureRelaxation = 2,
    int foodie = 2,
  }) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setInt('personality', personality);
    _prefs.setInt('tourismInterest', tourismInterest);
    _prefs.setInt('natureVsCity', natureVsCity);
    _prefs.setInt('adventureRelaxation', adventureRelaxation);
    _prefs.setInt('foodie', foodie);

    // Update the static fields in PersonalityPref class
    PersonalityPref.personality = personality;
    PersonalityPref.tourismInterest = tourismInterest;
    PersonalityPref.natureVsCity = natureVsCity;
    PersonalityPref.adventureRelaxation = adventureRelaxation;
    PersonalityPref.foodie = foodie;
  }
}