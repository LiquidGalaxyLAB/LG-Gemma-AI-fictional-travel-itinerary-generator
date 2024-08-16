import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:liquid_galaxy_rig/src/screens/old/Settings.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/screens/settings/user_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../controllers/settings_controller.dart';
import '../../../controllers/ssh_controller.dart';
import '../../settings/settings_view.dart';
import '../../splash/splash_screen.dart';
class AppBarWelcome extends StatelessWidget {
  const AppBarWelcome({
    super.key,
    required this.controller,required this.numb, required this.sshController,required this.lgController
  });
  final LgController lgController;
  final int numb;
  final SettingsController controller;
  final SshController sshController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Container(
            height: 40,
            width: 40,
            child: Image(image: AssetImage(
              'assets/images/${numb}.png',
            ),),
          ),
          Row(
            children: [
              IconButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder:(context)=> SettingsView(lgController: lgController, controller: controller ,sshController: sshController ,)
                       ));
              },icon:  Icon(
                Icons.settings,
                color: Colors.grey,
                size: 30,
              ),),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> PersonalityPreferencesPage(
                )));
              },icon:  Icon(
                Icons.person_pin,
                color: Colors.grey,
                size: 30,
              ),),
            ],
          ),

        ],
      ),
    );
  }
}