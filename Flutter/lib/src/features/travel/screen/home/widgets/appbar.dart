import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:liquid_galaxy_rig/Settings.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import '../../../../../controllers/settings_controller.dart';
import '../../../../../controllers/ssh_controller.dart';
import '../../../../../screens/settings/settings_view.dart';
import '../../../../../screens/splash/splash_screen.dart';
class AppBarWelcome extends StatelessWidget {
  const AppBarWelcome({
    super.key,
    required this.controller, required this.sshController,required this.lgController
  });
  final LgController lgController;
  final SettingsController controller;
  final SshController sshController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Hi, Shiven!",
            style: GoogleFonts.poppins(textStyle: TextStyle( color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              height: 1,
              letterSpacing: 0.0,
              wordSpacing: 0.0,),
            ),
          ),
          IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder:(context)=> SettingsView(lgController: lgController, controller: controller ,sshController: sshController ,)
                   ));
          },icon:  Icon(
            Icons.settings,
            color: Colors.grey,
            size: 30,
          ),),

        ],
      ),
    );
  }
}