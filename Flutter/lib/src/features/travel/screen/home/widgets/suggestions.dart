import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:liquid_galaxy_rig/src/controllers/settings_controller.dart';
import 'package:liquid_galaxy_rig/src/features/travel/screen/final/finalScreen.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/ssh_controller.dart';
import 'package:liquid_galaxy_rig/src/features/travel/screen/voice/voiceScreen.dart';

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
            child: IconButton(
              onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder:(context)=> Finalscreen(query: "Delhi", days: 2,
                //     settings: settings,
                //     sshController: sshController,
                //     lgController: lgController)
                // ));
                Navigator.push(context, MaterialPageRoute(builder:(context)=> new VoiceScreen(settings: settings,
                    sshController: sshController,
                    lgController: lgController)
                ));
              },
              icon: Icon(
                Iconsax.search_normal,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          HomeSuggestionTab(
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
          SizedBox(
            width: 10,
          ),
          HomeSuggestionTab(
            child: Text(
              "⛳️ Auxiliary",
              style: GoogleFonts.poppins(textStyle: TextStyle( color: Colors.white,

                fontSize: 18,
                height: 1,
                letterSpacing: 0.0,
                wordSpacing: 0.0,),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          HomeSuggestionTab(
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
        ],
      ),
    );
  }
}