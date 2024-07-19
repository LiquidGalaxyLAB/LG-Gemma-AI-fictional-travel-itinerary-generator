import 'package:flutter/material.dart';
import 'package:dart_ping_ios/dart_ping_ios.dart';
import 'package:liquid_galaxy_rig/src/app.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/ssh_controller.dart';
import 'package:liquid_galaxy_rig/src/features/travel/screen/home/homescreen.dart';
import 'package:liquid_galaxy_rig/warningPref.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

// import 'src/app.dart';
import 'src/controllers/settings_controller.dart';
import 'src/services/settings_service.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final SharedPreferences warningPrefs = await SharedPreferences.getInstance();

  bool? isWarning = warningPrefs.getBool('isWarning');
  // await warningPrefs.clear();
  if(isWarning!=null)
  Warningpref.isWarning =  isWarning;
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());
  final sshController = SshController();
  final lgController = LgController(
      settingsController: settingsController, sshController: sshController);

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  if (Platform.isIOS) {
    DartPingIOS.register();
  }

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.

  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((value) =>
      runApp(MyApp(
          settingsController: settingsController,
          sshController: sshController,
          lgController: lgController))
  );
}
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Chat Completion Result'),
//       ),
//       body: HomeScreen(),
//     ),
//   ));
// }
