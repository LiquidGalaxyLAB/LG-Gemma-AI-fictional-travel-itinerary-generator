import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:liquid_galaxy_rig/src/controllers/settings_controller.dart';
import 'package:liquid_galaxy_rig/src/screens/saved/beach.dart';
import 'package:liquid_galaxy_rig/src/screens/final/finalScreen.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/ssh_controller.dart';
import 'package:liquid_galaxy_rig/src/screens/voice/voiceScreen.dart';

import 'home_suggestion_tab.dart';
class Suggestions extends StatelessWidget {
  const Suggestions({
    super.key,
    required this.settings,
    required this.sshController,
    required this.lgController
  });
  final SshController sshController;
  final SettingsController settings;
  final LgController lgController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          HomeSuggestionTab(
            child: InkWell(
              child: Row(
                children: [
                  Icon(
                    Iconsax.search_normal,
                    color: Colors.white,
                  ),
                  Text(
                    "  Search",
                    style: GoogleFonts.poppins(textStyle: TextStyle( color: Colors.white,
                      fontSize: 18,
                      height: 1,
                      letterSpacing: 0.0,
                      wordSpacing: 0.0,),
                    ),
                  ),
                ],
              ),
              onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder:(context)=> Finalscreen(query: "Delhi", days: 2,
        //     settings: settings,
        //     sshController: sshController,
        //     lgController: lgController)
        // ));
        Navigator.push(context, MaterialPageRoute(builder:(context)=> new VoiceScreen(settings: settings,
        sshController: sshController,
        lgController: lgController)
    ));
  }
              ,
            )
          ),
          SizedBox(
            width: 10,
          ),
          HomeSuggestionTab(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=> new BeachScreen(
                    controller: settings,
                    sshController: sshController,
                    lgController: lgController)
                ));
              },
              child: Text(
                "🏝 Beach",
                style: GoogleFonts.poppins(textStyle: TextStyle( color: Colors.white,

                  fontSize: 18,
                  height: 1,
                  letterSpacing: 0.0,
                  wordSpacing: 0.0,),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          HomeSuggestionTab(
            child: InkWell(
              child: Text(
                "🐪 Desert",
                style: GoogleFonts.poppins(textStyle: TextStyle( color: Colors.white,

                  fontSize: 18,
                  height: 1,
                  letterSpacing: 0.0,
                  wordSpacing: 0.0,),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=> Finalscreen(query: "Morocco", days: 5, settings : settings, sshController: sshController, lgController: lgController)));
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          HomeSuggestionTab(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=> Finalscreen(query: "Shimla", days: 5, settings : settings, sshController: sshController, lgController: lgController)));
              },
              child: Text(
                "🏔️️ Hills",
                style: GoogleFonts.poppins(textStyle: TextStyle( color: Colors.white,

                  fontSize: 18,
                  height: 1,
                  letterSpacing: 0.0,
                  wordSpacing: 0.0,),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}