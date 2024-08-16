// import 'package:liquid_galaxy_rig/src/common/widgets/container/tab_glass.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/screens/about/about.dart';
import 'package:liquid_galaxy_rig/src/screens/final/finalScreenStatic.dart';
import 'package:liquid_galaxy_rig/src/screens/home/widgets/appbar.dart';
import 'package:liquid_galaxy_rig/src/screens/home/widgets/home_suggestion_tab.dart';
import 'package:liquid_galaxy_rig/src/screens/home/widgets/homeintro_text.dart';
import 'package:liquid_galaxy_rig/src/screens/home/widgets/suggestions.dart';
// import 'package:liquid_galaxy_rig/navigationmenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:liquid_galaxy_rig/src/screens/final/widgets/maps/maps.dart';
import 'package:liquid_galaxy_rig/src/screens/final/widgets/maps/maps1.dart';
import 'package:liquid_galaxy_rig/src/constants/savedResponses.dart';

import '../../controllers/settings_controller.dart';
import '../../controllers/ssh_controller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:liquid_galaxy_rig/src/screens/final/widgets/infiniteDraggableSlider/coverImage.dart';
import 'package:liquid_galaxy_rig/src/screens/final/widgets/infiniteDraggableSlider/infiniteDraggableSlider.dart';



class BeachScreen extends StatefulWidget {
  const BeachScreen({super.key,
    required this.lgController,
    required this.controller, required this.sshController
  });
  final LgController lgController;
  final SettingsController controller;
  final SshController sshController;

  @override
  State<BeachScreen> createState() => _BeachScreenState();
}

class _BeachScreenState extends State<BeachScreen> {

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
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child:Stack(
                  children: [
                    Container(
                      child: Row(children: [
                        InkWell(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0),
                            child: Container(
                              alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.05),
                                  child: Text("Rio De Janerio", style: GoogleFonts.bebasNeue(shadows: [Shadow(color: Colors.black, blurRadius: 2.0, offset: Offset(2.0, 2.0))], color: Colors.white, fontSize: 50,fontWeight: FontWeight.bold)),
                                ),
                                width: MediaQuery.of(context).size.width * 0.5,
                                height: MediaQuery.of(context).size.height,
                                decoration:BoxDecoration(
                                    image:   DecorationImage(fit: BoxFit.cover,image:   AssetImage('assets/images/rdj.jpeg'),
                                    ),
                                  border: Border(right: BorderSide(width: 10, color: Colors.white)),
                                )

                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context)=> FinalscreenStatic(query: '_lastWords',iten: savedResponses.rioDeJanerio, days: 6, settings: widget.controller, sshController: widget.sshController, lgController: widget.lgController)));
                          },
                        ),
                        InkWell(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0),
                            child: Container(
                              alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.05),
                                  child: Text("California", style: GoogleFonts.bebasNeue(shadows: [Shadow(color: Colors.black, blurRadius: 2.0, offset: Offset(2.0, 2.0))], color: Colors.white, fontSize: 50,fontWeight: FontWeight.bold)),
                                ),
                                width: MediaQuery.of(context).size.width * .5,
                                height: MediaQuery.of(context).size.height,
                                decoration:BoxDecoration(
                                    image:   DecorationImage(fit: BoxFit.cover,image:   AssetImage('assets/images/california.jpeg'),
                                    ),
                                    border: Border(left: BorderSide(width: 10, color: Colors.white)),

                                )
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context)=> FinalscreenStatic(query: '_lastWords',iten: savedResponses.california, days: 6, settings: widget.controller, sshController: widget.sshController, lgController: widget.lgController)));
                          },
                        ),

                      ]),
                    ),
                    Row(children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.width * 0.5,
                            child: InkWell(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(MediaQuery.of(context).size.width * 0.5),
                                ),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.5,
                                  height: MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(MediaQuery.of(context).size.width * 0.5),
                                    ),
                                    border: Border(
                                      right: BorderSide(
                                        color: Colors.white,
                                        width: 20.0,
                                        style: BorderStyle.solid,
                                      ),
                                      bottom: BorderSide(
                                        color: Colors.white,
                                        width: 20.0,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(MediaQuery.of(context).size.width * 0.5),
                                      ),
                                      child: Container(
                                        alignment: Alignment.topLeft,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage('assets/images/dubaii.jpeg'),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.05),
                                          child: Text(
                                            "Dubai",
                                            style: GoogleFonts.bebasNeue(
                                              shadows: [Shadow(color: Colors.black, blurRadius: 2.0, offset: Offset(2.0, 2.0))],
                                              color: Colors.white,
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder:(context)=> FinalscreenStatic(query: '_lastWords',iten: savedResponses.dubai, days: 6, settings: widget.controller, sshController: widget.sshController, lgController: widget.lgController)));
                              },
                            ),
                          ),
                          SizedBox(height: 1),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 1,),
                          InkWell(
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(MediaQuery.of(context).size.width * 0.5),
                                bottomRight: Radius.circular(0),

                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(MediaQuery.of(context).size.width * 0.5),
                                  ),
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.white,
                                      width: 20.0,
                                      style: BorderStyle.solid,
                                    ),
                                    left: BorderSide(
                                      color: Colors.white,
                                      width: 20.0,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(MediaQuery.of(context).size.width * 0.5),
                                    ),
                                    child: Container(
                                      alignment: Alignment.bottomRight,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage('assets/images/laa.jpeg'),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.05),
                                        child: Text(
                                          "Los Angeles",
                                          style: GoogleFonts.bebasNeue(
                                            shadows: [Shadow(color: Colors.black, blurRadius: 2.0, offset: Offset(2.0, 2.0))],
                                            color: Colors.white,
                                            fontSize: 50,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=> FinalscreenStatic(query: '_lastWords',iten: savedResponses.losAngeles, days: 6, settings: widget.controller, sshController: widget.sshController, lgController: widget.lgController)));
                            },
                          ),
                        ],
                      ),

                    ]),
                    Positioned(top: 10,left: 5,child: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(CupertinoIcons.back, color: Colors.white,),))
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
