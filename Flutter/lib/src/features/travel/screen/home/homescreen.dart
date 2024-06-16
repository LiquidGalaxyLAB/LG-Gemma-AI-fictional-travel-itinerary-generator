// import 'package:liquid_galaxy_rig/src/common/widgets/container/tab_glass.dart';
import 'package:liquid_galaxy_rig/src/features/travel/screen/home/widgets/appbar.dart';
import 'package:liquid_galaxy_rig/src/features/travel/screen/home/widgets/home_suggestion_tab.dart';
import 'package:liquid_galaxy_rig/src/features/travel/screen/home/widgets/homeintro_text.dart';
import 'package:liquid_galaxy_rig/src/features/travel/screen/home/widgets/suggestions.dart';
// import 'package:liquid_galaxy_rig/navigationmenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:liquid_galaxy_rig/src/maps.dart';

import '../../../../controllers/settings_controller.dart';
import '../../../../controllers/ssh_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,
  required this.controller, required this.sshController
  });

  final SettingsController controller;
  final SshController sshController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Row(
          children: [
            Container(width: MediaQuery.of(context).size.width * 0.6,child: MapTile()),
            Container(width: MediaQuery.of(context).size.width * 0.4,child: Stack(
              children: [
                ///Earth image
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Transform.scale(
                          scale: 1.0,
                          child: Image.asset(
                            "assets/images/l5JbspfwZ0yjHjlJ0K.gif",
                          )),
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppBarWelcome(sshController: sshController,controller: controller,),
                        SizedBox(
                          height: 10,
                        ),
                        HomeIntroText(),
                        SizedBox(
                          height: 180,
                        ),
                        Suggestions(),
                        SizedBox(
                          height: 10,
                        ),
                        Flexible(
                          child: Row(
                            children: [
                              Flexible(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * .5,
                                    child: Image.asset(
                                      "assets/images/travel2.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(20)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Column(
                                  children: [
                                    Flexible(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width *
                                              .5,
                                          child: Image.asset(
                                            "assets/images/travel1.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                              BorderRadius.circular(20)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Flexible(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width *
                                              .5,
                                          child: Image.asset(
                                            "assets/images/travel3.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius:
                                              BorderRadius.circular(20)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}
