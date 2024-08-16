import 'package:dart_ping/dart_ping.dart';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:liquid_galaxy_rig/src/controllers/ssh_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/helpers/kml_helper.dart';
import 'package:liquid_galaxy_rig/src/screens/lg_home/lg_home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../controllers/settings_controller.dart';

class SettingsView extends StatefulWidget {
  const SettingsView(
      {super.key, required this.controller, required this.sshController,required this.lgController});

  static const routeName = '/settings';

  final SettingsController controller;
  final SshController sshController;
  final LgController lgController;

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class _SettingsViewState extends State<SettingsView> {

  final _lgConfigFormKey = GlobalKey<FormState>();
  final _lgIpController = TextEditingController();
  final _serverIpController = TextEditingController();
  final _lgPortController = TextEditingController();
  final _lgUsernameController = TextEditingController();
  final _lgPasswordController = TextEditingController();
  final _lgRigsNumController = TextEditingController();
  String lgserverip = '';

  @override
  void initState() {
    setPrefs();
  }
  void setPrefs() async {
    final SharedPreferences warningPrefs = await SharedPreferences.getInstance();
    String jack = warningPrefs.getString('AIServer') ?? '';
    String jack1 = warningPrefs.getString('LGip') ?? '';
    String jack2 = warningPrefs.getString('LGport') ?? '';
    String jack3 = warningPrefs.getString('LGuser') ?? '';
    String jack4 = warningPrefs.getString('LGpass') ?? '';
    String jack5 = warningPrefs.getString('LGrigs') ?? '';
    _serverIpController.text = jack;
    lgserverip = jack;
    _lgIpController.text = jack1;
    widget.controller.updateLgIp(jack1);
     _lgPortController.text = jack2;
    widget.controller.updateLgPort(jack2);
     _lgUsernameController.text = jack3;
    widget.controller.updateLgUsername(jack3);
     _lgPasswordController.text = jack4;
     widget.controller.updateLgPassword(jack4);
     _lgRigsNumController.text = jack5;
    widget.controller.updateLgRigsNum(jack5);
  }
  @override
  Widget build(BuildContext context) {
    _lgIpController.text = widget.controller.lgIp ?? '';
    _lgPortController.text = widget.controller.lgPort ?? '';
    _serverIpController.text = lgserverip;
    _lgUsernameController.text = widget.controller.lgUsername ?? '';
    _lgPasswordController.text = widget.controller.lgPassword ?? '';
    _lgRigsNumController.text = widget.controller.lgRigsNum ?? '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
        // Glue the SettingsController to the theme selection DropdownButton.
        //
        // When a user selects a theme from the dropdown list, the
        // SettingsController is updated, which rebuilds the MaterialApp.
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // localization selector
              const Text(
                'Theme',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              DropdownButton<ThemeMode>(
                // Read the selected themeMode from the controller
                value: widget.controller.themeMode,
                // Call the updateThemeMode method any time the user selects a theme.
                onChanged: widget.controller.updateThemeMode,
                items: const [
                  DropdownMenuItem(
                    value: ThemeMode.system,
                    child: Text('System Theme'),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.light,
                    child: Text('Light Theme'),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.dark,
                    child: Text('Dark Theme'),
                  )
                ],
              ),
              const Text(
                'Liquid Galaxy Configuration',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Form(
                key: _lgConfigFormKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the IP of the Liquid Galaxy Master';
                          }
                          return null;
                        },
                        controller: _lgIpController,
                        onChanged: widget.controller.updateLgIp,
                        decoration: InputDecoration(
                          labelText: 'LG IP',
                          hintText: 'Enter the IP of the Liquid Galaxy Master',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffixIcon: IconButton(
                            color: Colors.blue,
                            icon: const Icon(Icons.radar),
                            onPressed: () async {
                              final pingResult = await Ping(
                                _lgIpController.value.text,
                                count: 1,
                              ).stream.first;
                              bool pingSuccess = pingResult.response != null;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                      'Ping was ${pingSuccess ? 'successful' : 'unsuccessful'}'),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the SSH Port of the Liquid Galaxy Master';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        controller: _lgPortController,
                        onChanged: widget.controller.updateLgPort,
                        decoration: InputDecoration(
                          labelText: 'LG SSH Port',
                          hintText: 'Enter the SSH of the Liquid Galaxy Master',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the SSH Port of the Liquid Galaxy Master';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        controller: _lgUsernameController,
                        onChanged: widget.controller.updateLgUsername,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          labelText: 'LG SSH Username',
                          hintText:
                              'Enter the SSH Username of the Liquid Galaxy Master',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the SSH Port of the Liquid Galaxy Master';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        controller: _lgPasswordController,
                        onChanged: widget.controller.updateLgPassword,
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          labelText: 'LG SSH Password',
                          hintText:
                              'Enter the SSH password of the Liquid Galaxy Master',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the number of rigs in your Liquid Galaxy';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        controller: _lgRigsNumController,
                        onChanged: widget.controller.updateLgRigsNum,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          labelText: 'Number of rigs in Liquid Galaxy',
                          hintText: 'Enter the number of rigs in your setup.',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                children : [
                  ElevatedButton(
                  child: const Text('Connect!'),
                  onPressed: () async {
                    print('clicked');
                    _lgConfigFormKey.currentState!.validate();
                    if (_lgConfigFormKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Connecting...')),
                      );
                      try {
                        var jack = await widget.sshController.connect(
                            _lgIpController.value.text,
                            int.parse(_lgPortController.value.text));
                        print(jack.toString() + "stdatus");
                        print("e.toString()");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Connected, authenticating...')),
                        );

                        if (widget.sshController.connection != null) {
                          try {
                            var wav = await widget.sshController.authenticate(
                                _lgUsernameController.value.text,
                                _lgPasswordController.value.text);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Authenticated, connected!')),
                            );
                            //Send logos
    int leftRig = (int.parse(_lgRigsNumController.text) / 2).floor() + 2;
    try {
    await widget.lgController.dispatchSlaveKml(
    context,
    leftRig,
    KmlHelper.screenOverlayImage(
    "https://i.ibb.co/6HTVC4z/centrelogo.png",
    770 / 1380
    ),
    );
    } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
    content: Text('Failed to dispatch KML query'),
    ),
    );}
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Failed to authenticate! Check username, password!'),
                              ),
                            );
                          }
                        }
                      } catch (e) {
                        print(e.toString());
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:
                            Text('Failed to connect, recheck IP and port!}'),
                          ),
                        );
                      }
                      _lgConfigFormKey.currentState!.save();
                    }
                  },
                ),
                  SizedBox(width: 15,),
                  ElevatedButton(onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(builder:(context)=> Finalscreen(query: "Delhi", days: 2,
                    //     settings: settings,
                    //     sshController: sshController,
                    //     lgController: lgController)
                    // ));
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> new LgHome(
                        settings: widget.controller,
                        sshController: widget.sshController,
                        lgController: widget.lgController)
                    ));
                  }, child: const Text('Lg Actions'))
                ]
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (value)  {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Gemini API key.';
                    }
                    return null;
                  },
                  controller: _serverIpController,

                  onChanged: (String newLgIp) async {
                    final SharedPreferences warningPrefs = await SharedPreferences.getInstance();
                    String jack = await warningPrefs.getString('AIServer') ?? '';
                    print(jack);
                    if (newLgIp == _serverIpController.text) {
                      await warningPrefs.setString('AIServer', newLgIp);
                      return;
                    } else {
                      await warningPrefs.setString('AIServer', newLgIp);
                      _serverIpController.text = newLgIp;

                    }
                  },

                  decoration: InputDecoration(
                    labelText: 'Gemini API Key',
                    hintText: 'Enter the API key of Google Gemini.',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    suffixIcon: IconButton(
                      color: Colors.blue,
                      icon: const Icon(Icons.question_mark),
                      onPressed: () async {
                        final model = GenerativeModel(
                          model: 'gemini-1.5-flash-latest',
                          apiKey: _serverIpController.text,
                        );
                        final content = [Content.text("Hi")];
                        try {
                          print( _serverIpController.text);
                          final response = await model.generateContent(content);
                          final jacky = await response.text ?? '';
                          print(jacky);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'API Key Test was successful'),
                            ),
                          );
                        }
                        catch(e) {
                          print(e.toString());
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'Please check API Key'),
                            ),
                          );
                        }
    },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
