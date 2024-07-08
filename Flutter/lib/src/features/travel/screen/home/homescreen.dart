// import 'package:liquid_galaxy_rig/src/common/widgets/container/tab_glass.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/features/travel/screen/about/about.dart';
import 'package:liquid_galaxy_rig/src/features/travel/screen/final/finalScreenStatic.dart';
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
import 'package:liquid_galaxy_rig/src/maps1.dart';
import 'package:liquid_galaxy_rig/src/saved/savedResponses.dart';

import '../../../../controllers/settings_controller.dart';
import '../../../../controllers/ssh_controller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:liquid_galaxy_rig/src/features/travel/screen/final/widget/infiniteDraggableSlider/coverImage.dart';
import 'package:liquid_galaxy_rig/src/features/travel/screen/final/widget/infiniteDraggableSlider/infiniteDraggableSlider.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,
    required this.lgController,
  required this.controller, required this.sshController
  });
  final LgController lgController;
  final SettingsController controller;
  final SshController sshController;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late GoogleMapController mapController;
  List<Map<String, dynamic>> images = [
    {
      'image': 'assets/images/punjab.jpg',
       'text' : 'Punjab',
      'data': savedResponses.punjab
    },
    {
      'image': 'assets/images/delhi.jpg',
      'text' : 'Delhi',
      'data': savedResponses.delhi
    },
  ];
  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      body: SafeArea(
        child: Row(
          children: [
            Container(width: MediaQuery.of(context).size.width * 0.6,
        child:Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(children: [
                ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(width: 1, color: Colors.white)
                          )
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> new AboutPage()));
              }, child: Text("About Us"))],),
              Row(children: [
                InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      child: Center(child: Text("Punjab", style: GoogleFonts.bebasNeue(shadows: [Shadow(color: Colors.black, blurRadius: 2.0, offset: Offset(2.0, 2.0))], color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))),
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: MediaQuery.of(context).size.height * 0.8,
                      decoration:BoxDecoration(
                        image:   DecorationImage(fit: BoxFit.cover,image:   AssetImage('assets/images/punjab.jpg'),
                        )

                      )
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> FinalscreenStatic(query: '_lastWords',iten: savedResponses.punjab, days: 6, settings: widget.controller, sshController: widget.sshController, lgController: widget.lgController)));
                  },
                ),
                // SizedBox(
                //   height: MediaQuery
                //       .of(context)
                //       .size
                //       .height * 0.8,
                //   child: InfiniteDragableSlider(
                //     iteamCount: 2,
                //     itemBuilder: (context, index) =>
                //         InkWell(
                //           child: ClipRRect(
                //             borderRadius: BorderRadius.circular(20),
                //             child: Container(
                //                 child: Center(child: Text(images[index]['text'], style: GoogleFonts.bebasNeue(shadows: [Shadow(color: Colors.black, blurRadius: 2.0, offset: Offset(2.0, 2.0))], color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))),
                //                 width: MediaQuery.of(context).size.width * 0.28,
                //                 height: MediaQuery.of(context).size.height * 0.8,
                //                 decoration:BoxDecoration(
                //                     image:   DecorationImage(fit: BoxFit.cover,image:   AssetImage(images[index]['image']),
                //                     )
                //
                //                 )
                //             ),
                //           ),
                //           onTap: (){
                //             Navigator.push(context, MaterialPageRoute(builder:(context)=> FinalscreenStatic(query: '_lastWords',iten: images[index]['data'], days: 6, settings: widget.controller, sshController: widget.sshController, lgController: widget.lgController)));
                //           },
                //         ),
                //   ),
                // ),
                Spacer(),
                InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                        child: Center(child: Text("Delhi", style: GoogleFonts.bebasNeue(
                            shadows: [Shadow(color: Colors.black, blurRadius: 4.0, offset: Offset(2.0, 2.0))], color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))),

                        width: MediaQuery.of(context).size.width * 0.28,
                        height: MediaQuery.of(context).size.height * 0.85,
                        decoration:BoxDecoration(
                            image:   DecorationImage(fit: BoxFit.cover,image:   AssetImage('assets/images/delhi2.jpeg'),
                            )

                        )
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> FinalscreenStatic(query: '_lastWords',iten: savedResponses.delhi, days: 5, settings: widget.controller, sshController: widget.sshController, lgController: widget.lgController)));
                  },
                ),
              ]),

            ],
          ),
        )),
            Container(width: MediaQuery.of(context).size.width * 0.4,
              child: Stack(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 1,
                      child: Transform.scale(
                          scale: 2.0,
                          child: Image.asset(
                            "assets/images/sky12.jpg",
                          )),
                    ),
                  ),
                ),
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
                        AppBarWelcome(sshController: widget.sshController,lgController: widget.lgController, controller: widget.controller,),
                        SizedBox(
                          height: 10,
                        ),
                        HomeIntroText(),
                        SizedBox(
                          height: 150,
                        ),
                        Suggestions(settings: widget.controller,
                            sshController: widget.sshController,
                            lgController: widget.lgController),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
