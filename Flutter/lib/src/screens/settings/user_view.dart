import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Define a class to hold preferences
class PersonalityPref {
  static int personality = 2; // Default to 'both'
  static int tourismInterest = 2; // Default to 'both'
  static int natureVsCity = 2; // Default to 'both'
  static int adventureRelaxation = 2; // Default to 'both'
  static int foodie = 1;
  static int icon = 1;// Default to 'yes'
}
class PersonalityPreferencesPage extends StatefulWidget {
  @override
  _PersonalityPreferencesPageState createState() =>
      _PersonalityPreferencesPageState();
}

class _PersonalityPreferencesPageState
    extends State<PersonalityPreferencesPage> {
  late SharedPreferences _prefs;

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  Future<void> _initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    _loadPreferences();
  }

  void _loadPreferences() {
    setState(() {
      PersonalityPref.personality = _prefs.getInt('personality') ?? 2;
      PersonalityPref.icon = _prefs.getInt('icon') ?? 1;
      PersonalityPref.tourismInterest =
          _prefs.getInt('tourismInterest') ?? 2;
      PersonalityPref.natureVsCity = _prefs.getInt('natureVsCity') ?? 2;
      PersonalityPref.adventureRelaxation =
          _prefs.getInt('adventureRelaxation') ?? 2;
      PersonalityPref.foodie = _prefs.getInt('foodie') ?? 1;
    });
  }

  void _savePreferences() {
    _prefs.setInt('personality', PersonalityPref.personality);
    _prefs.setInt('tourismInterest', PersonalityPref.tourismInterest);
    _prefs.setInt('natureVsCity', PersonalityPref.natureVsCity);
    _prefs.setInt('adventureRelaxation', PersonalityPref.adventureRelaxation);
    _prefs.setInt('foodie', PersonalityPref.foodie);
    _prefs.setInt('icon', PersonalityPref.icon);
    print(_prefs.getInt('personality'));
    print(_prefs.getInt('tourismInterest'));
    print(_prefs.getInt('natureVsCity'));
    print(_prefs.getInt('adventureRelaxation'));
    print(_prefs.getInt('foodie'));
    print(_prefs.getInt('icon'));
    print("Halleluyah");

  }

  void _handlePersonalityChange(String newValue) {
    int value = newValue == 'Extrovert' ? 0 : newValue == 'Introvert'? 1 :  2;
    setState(() {
      PersonalityPref.personality = value;
    });
    _savePreferences();
  }

  void _handleTourismInterestChange(String newValue) {
    int value = newValue == 'Historical' ? 0 : newValue == 'Modern'? 1 :  2;

    setState(() {
      PersonalityPref.tourismInterest = value;
    });
    _savePreferences();
  }

  void _handleNatureVsCityChange(String newValue) {
    int value = newValue == 'Nature' ? 0 : newValue == 'City'? 1 :  2;

    setState(() {
      PersonalityPref.natureVsCity = value;
    });
    _savePreferences();
  }

  void _handleAdventureRelaxationChange(String newValue) {
    int value = newValue == 'Adventure' ? 0 : newValue == 'Relaxation'? 1 : 2;

    setState(() {
      PersonalityPref.adventureRelaxation = value;
    });
    _savePreferences();
  }

  void _handleFoodieChange(String newValue) {
    int value = newValue == 'Yes' ? 0 : 1 ;

    setState(() {
      PersonalityPref.foodie = value;
    });
    _savePreferences();
  }
  List<int> _iconPaths = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 28, 32, 1),
      appBar: AppBar(
        title: Text('Personality Preferences',),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SingleChildScrollView(scrollDirection: Axis.horizontal,child: Row(
                children: _iconPaths.map((iconPath) {
                  return GestureDetector(
                    onTap: () async {
                      print('clicked');
                      setState(() {
                        PersonalityPref.icon = iconPath;
                      });
                      _savePreferences();
                    },
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: PersonalityPref.icon == iconPath
                              ? Colors.blue
                              : Colors.transparent,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.asset(
                        'assets/images/${iconPath}.png',
                        width: 100, // Adjust size as needed
                        height: 100, // Adjust size as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              )),
              SizedBox(height: 10,),
              _buildPreferenceSelector(
                title: 'Personality',
                value: PersonalityPref.personality == 0 ? 'Extrovert': PersonalityPref.personality == 1 ? 'Introvert': 'Both',
                onChanged: _handlePersonalityChange,
                options: ['Extrovert', 'Introvert', 'Both'],
              ),
              SizedBox(height: 0),
              _buildPreferenceSelector(
                title: 'Tourism Interest',
                value: PersonalityPref.tourismInterest == 0 ? 'Historical': PersonalityPref.tourismInterest == 1 ? 'Modern': 'Both',
                onChanged: _handleTourismInterestChange,
                options: ['Historical', 'Modern', 'Both'],
              ),
              SizedBox(height: 0),
              _buildPreferenceSelector(
                title: 'Nature vs City',
                value: PersonalityPref.natureVsCity == 0 ? 'Nature': PersonalityPref.natureVsCity == 1 ? 'City': 'Both' ,
                onChanged: _handleNatureVsCityChange,
                options: ['Nature', 'City', 'Both'],
              ),
              SizedBox(height: 0),
              _buildPreferenceSelector(
                title: 'Adventure vs Relaxation',
                value: PersonalityPref.adventureRelaxation == 0 ? 'Adventure': PersonalityPref.adventureRelaxation == 1 ? 'Relaxation': 'Both',
                onChanged: _handleAdventureRelaxationChange,
                options: ['Adventure', 'Relaxation', 'Both'],
              ),
              SizedBox(height: 0),
              _buildPreferenceSelector(
                title: 'Foodie',
                value: PersonalityPref.foodie == 0 ?'Yes' : 'No' ,
                onChanged: _handleFoodieChange,
                options: ['Yes', 'No'],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPreferenceSelector({
    required String title,
    required String value,
    required ValueChanged<String> onChanged,
    required List<String> options,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          width: MediaQuery.of(context).size.width * 0.25,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: options.map((option) {
              return _buildPreferenceButton(
                title: option,
                value: option,
                onChanged: onChanged,
                currentValue: value,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildPreferenceButton({
    required String title,
    required String value,
    required ValueChanged<String> onChanged,
    required String currentValue,
  }) {
    bool isSelected = value == currentValue;

    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: ElevatedButton(
        onPressed: () => onChanged(value),
        style: ButtonStyle(

          backgroundColor: isSelected
              ? MaterialStateProperty.all<Color>(Color.fromRGBO(72, 85, 99, 1))
              : MaterialStateProperty.all<Color>(Color.fromRGBO(25, 28, 32, 1)),

    foregroundColor: isSelected
              ? MaterialStateProperty.all<Color>(Colors.white)
              : MaterialStateProperty.all<Color>(Colors.white),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0), // Adjust the radius as needed
    // Optionally, you can add more styling properties here
    )),
        ),
        child: Text(title),
      ),
    );
  }
}