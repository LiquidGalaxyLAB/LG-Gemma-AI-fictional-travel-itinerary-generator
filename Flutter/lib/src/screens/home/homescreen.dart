// import 'package:liquid_galaxy_rig/src/common/widgets/container/tab_glass.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/screens/about/about.dart';
import 'package:liquid_galaxy_rig/src/screens/final/finalScreen.dart';
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
import 'package:shared_preferences/shared_preferences.dart';

import '../../controllers/settings_controller.dart';
import '../../controllers/ssh_controller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:liquid_galaxy_rig/src/screens/final/widgets/infiniteDraggableSlider/coverImage.dart';
import 'package:liquid_galaxy_rig/src/screens/final/widgets/infiniteDraggableSlider/infiniteDraggableSlider.dart';



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
  int getNumber = 1;
  bool isAPISET = false;

  @override
  void initState() {
 getnumb();
  }
  Future<void> getnumb () async{
    while(true) {
      final SharedPreferences warningPrefs =
          await SharedPreferences.getInstance();
      int jack = warningPrefs.getInt('icon') ?? 1;
      String jacky = warningPrefs.getString('AIServer') ?? '';
      if(jacky != '')
        {
            isAPISET = true;
        }
      else
        {
          isAPISET = false;
        }
      setState(() {
        getNumber = jack;
      });
      print("jack");
       await Future.delayed(Duration(seconds: 3));
    }
  }
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
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                  }, child: Text("About Us")),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(width: 2, color: widget.sshController.client != null ? Colors.green : Colors.red)
                                  )
                              ),
                              backgroundColor: MaterialStateProperty.all(Colors.black),
                              foregroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: (){
                            }, child: Text("LG", style: TextStyle(color: widget.sshController.client != null ? Colors.green : Colors.red))),
                        SizedBox(width: 8,),
                        ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(width: 2, color: isAPISET ? Colors.blue : Colors.red)
                                  )
                              ),
                              backgroundColor: MaterialStateProperty.all(Colors.black),
                              foregroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: (){
                            }, child: Text("Gemini", style: TextStyle(color: isAPISET ? Colors.blue : Colors.red))),
                      ],
                    )],),
                  Flexible(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        height: double.infinity,
                        child: Row(children: [
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
                          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                          InkWell(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  child: Center(child: Text("California", style: GoogleFonts.bebasNeue(shadows: [Shadow(color: Colors.black, blurRadius: 2.0, offset: Offset(2.0, 2.0))], color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))),
                                  width: MediaQuery.of(context).size.width * 0.28,
                                  height: MediaQuery.of(context).size.height * 0.80,
                                  decoration:BoxDecoration(
                                      image:   DecorationImage(fit: BoxFit.cover,image:   AssetImage('assets/images/california.jpeg'),
                                      )

                                  )
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=> FinalscreenStatic(query: '_lastWords',iten: savedResponses.california, days: 6, settings: widget.controller, sshController: widget.sshController, lgController: widget.lgController)));
                            },
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                          InkWell(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  child: Center(child: Text("Paris", style: GoogleFonts.bebasNeue(shadows: [Shadow(color: Colors.black, blurRadius: 2.0, offset: Offset(2.0, 2.0))], color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))),
                                  width: MediaQuery.of(context).size.width * 0.28,
                                  height: MediaQuery.of(context).size.height * 0.8,
                                  decoration:BoxDecoration(
                                      image:   DecorationImage(fit: BoxFit.cover,image:   AssetImage('assets/images/paris.jpg'),
                                      )

                                  )
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=> FinalscreenStatic(query: '_lastWords',iten: savedResponses.paris, days: 6, settings: widget.controller, sshController: widget.sshController, lgController: widget.lgController)));
                            },
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
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
                          InkWell(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  child: Center(child: Text("Delhi", style: GoogleFonts.bebasNeue(
                                      shadows: [Shadow(color: Colors.black, blurRadius: 4.0, offset: Offset(2.0, 2.0))], color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))),

                                  width: MediaQuery.of(context).size.width * 0.28,
                                  height: MediaQuery.of(context).size.height * 0.80,
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
                          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                          InkWell(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  child: Center(child: Text("Madrid", style: GoogleFonts.bebasNeue(shadows: [Shadow(color: Colors.black, blurRadius: 2.0, offset: Offset(2.0, 2.0))], color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold))),
                                  width: MediaQuery.of(context).size.width * 0.28,
                                  height: MediaQuery.of(context).size.height * 0.8,
                                  decoration:BoxDecoration(
                                      image:   DecorationImage(fit: BoxFit.cover,image:   AssetImage('assets/images/madrid.jpeg'),
                                      )

                                  )
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=> FinalscreenStatic(query: '_lastWords',iten: savedResponses.madrid, days: 6, settings: widget.controller, sshController: widget.sshController, lgController: widget.lgController)));
                            },
                          ),

                        ]),
                      ),
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.chevron_left, color: Colors.grey,size: 40,),
                    Icon(Icons.chevron_right, color: Colors.grey,size: 40,)
                  ],
                ),
              ),
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
                        AppBarWelcome(sshController: widget.sshController, numb: getNumber,lgController: widget.lgController, controller: widget.controller,),
                        SizedBox(
                          height: 10,
                        ),
                        HomeIntroText(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
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
                                  child: InkWell(
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
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder:(context)=> Finalscreen(query: "Australia", days: 5, settings: widget.controller, sshController: widget.sshController, lgController: widget.lgController)));

                                    },
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
                                        child: InkWell(
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
                                          onTap: () {
                                            Navigator.push(context, MaterialPageRoute(builder:(context)=> Finalscreen(query: "brazil", days: 5, settings: widget.controller, sshController: widget.sshController, lgController: widget.lgController)));

                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Flexible(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: InkWell(
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
                                          onTap: () {
                                            Navigator.push(context, MaterialPageRoute(builder:(context)=> Finalscreen(query: "Turkey", days: 5, settings: widget.controller, sshController: widget.sshController, lgController: widget.lgController)));

                                          },
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
