import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/settings_service.dart';

/// A class that many Widgets can interact with to read user settings, update
/// user settings, or listen to user settings changes.
///
/// Controllers glue Data Services to Flutter Widgets. The SettingsController
/// uses the SettingsService to store and retrieve user settings.
class SettingsController with ChangeNotifier {
  String? _lgIp;
  String? _lgPort;
  String? _lgUsername;
  String? _lgPassword;
  String? _lgRigsNum;

  SettingsController(this._settingsService);

  // Make SettingsService a private variable so it is not used directly.
  final SettingsService _settingsService;

  // Make ThemeMode a private variable so it is not updated directly without
  // also persisting the changes with the SettingsService.
  late ThemeMode _themeMode;

  // Allow Widgets to read the user's preferred ThemeMode.
  ThemeMode get themeMode => _themeMode;

  String? get lgIp => _lgIp;
  String? get lgPort => _lgPort;
  String? get lgUsername => _lgUsername;
  String? get lgPassword => _lgPassword;
  String? get lgRigsNum => _lgRigsNum;

  /// Load the user's settings from the SettingsService. It may load from a
  /// local database or the internet. The controller only knows it can load the
  /// settings from the service.
  Future<void> loadSettings() async {
    _themeMode = await _settingsService.themeMode();

    // Important! Inform listeners a change has occurred.
    notifyListeners();
  }

  /// Update and persist the ThemeMode based on the user's selection.
  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    if (newThemeMode == null) return;

    // Do not perform any work if new and old ThemeMode are identical
    if (newThemeMode == _themeMode) return;

    // Otherwise, store the new ThemeMode in memory
    _themeMode = newThemeMode;

    // Important! Inform listeners a change has occurred.
    notifyListeners();

    // Persist the changes to a local database or the internet using the
    // SettingService.
    await _settingsService.updateThemeMode(newThemeMode);
  }

  Future<void> updateLgIp(String newLgIp) async {
    final SharedPreferences warningPrefs = await SharedPreferences.getInstance();
    String jack = await warningPrefs.getString('LGip') ?? '';
    print(jack);
    if (newLgIp == lgIp) {
      await warningPrefs.setString('LGip', newLgIp);
      return;
    } else {
      _lgIp = newLgIp;
      await warningPrefs.setString('LGip', newLgIp);
    }
  }

  Future<void> updateLgPort(String newLgPort) async {
    final SharedPreferences warningPrefs = await SharedPreferences.getInstance();
    String jack = await warningPrefs.getString('LGport') ?? '';
    print(jack);
    if (newLgPort == lgPort) {
      await warningPrefs.setString('LGport', newLgPort);
      return;
    } else {
      _lgPort = newLgPort;
      await warningPrefs.setString('LGport', newLgPort);
    }
  }

  Future<void> updateLgUsername(String newLgUsername) async {
    final SharedPreferences warningPrefs = await SharedPreferences.getInstance();
    String jack = await warningPrefs.getString('LGuser') ?? '';
    print(jack);
    if (newLgUsername == lgUsername) {
      await warningPrefs.setString('LGuser', newLgUsername);
      return;
    } else {
      await warningPrefs.setString('LGuser', newLgUsername);
      _lgUsername = newLgUsername;
    }
  }

  Future<void> updateLgPassword(String newLgPassword) async {
    final SharedPreferences warningPrefs = await SharedPreferences.getInstance();
    String jack = await warningPrefs.getString('LGpass') ?? '';
    print(jack);
    if (newLgPassword == lgPassword) {
      await warningPrefs.setString('LGpass', newLgPassword);
      return;
    } else {
      await warningPrefs.setString('LGpass', newLgPassword);
      _lgPassword = newLgPassword;
    }
  }

  Future<void> updateLgRigsNum(String newLgRigsNum) async {
    final SharedPreferences warningPrefs = await SharedPreferences.getInstance();
    String jack = await warningPrefs.getString('LGrigs') ?? '';
    print(jack);
    if (newLgRigsNum == lgRigsNum) {
      await warningPrefs.setString('LGrigs', newLgRigsNum);
      return;
    } else {
      await warningPrefs.setString('LGrigs', newLgRigsNum);
      _lgRigsNum = newLgRigsNum;
    }
  }
}
