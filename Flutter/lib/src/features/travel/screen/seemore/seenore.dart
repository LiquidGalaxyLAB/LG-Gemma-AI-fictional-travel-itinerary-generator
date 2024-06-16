import 'package:liquid_galaxy_rig/src/data/model/itenaryModel.dart';
import 'package:liquid_galaxy_rig/src/maps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../final/widget/infiniteDraggableSlider/coverImage.dart';
import '../final/widget/infiniteDraggableSlider/infiniteDraggableSlider.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({super.key, required this.item});
final Places item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "asset/sky1.jpg",
                fit: BoxFit.fill,
              )),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  ///Title
                  Center(
                      child: Text(
                    item.name!,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  )),
            
                  ///Image slider
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: InfiniteDragableSlider(
                      iteamCount: 2,
                      itemBuilder: (context, index) => MagazineCoverImage(
                        height: 290,
                        asset: item.imageLink!,
                      ),
                    ),
                  ),
                  ///visit time
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Row(
                      children: [
                        Text(
                          'Visit time: ',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.bold),
                        ).p(5),
                        Text(
                          item.visitTime!,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.normal),
                        ).p(5),
                      ],
                    ),
                  ),
            ///Attraction
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Row(
                      children: [
                        Text(
                          'Attraction: ',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.bold),
                        ).p(5),
                        Text(
                         item.attraction!,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.normal),
                        ).p(5),
                      ],
                    ),
                  ),
                  ///childreen allowed
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Row(
                      children: [
                        Text(
                          'Children Allowed: ',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.bold),
                        ).p(5),
                        Text(
                          item.childrenAllowed!,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.normal),
                        ).p(5),
                      ],
                    ),
                  ),
                  ///Visit timr
                  ///DEscription
                  GlassContainer(
                    child: Text(
item.description!,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      )),
                    ).p(20),
                  ).p(10),
                  
                  ///map
                  GlassContainer(
                    child: Container(
                      height: 400,

                      //Edit code here

                      // child: MapTile(item:item,),
                      child: MapTile(),

                    )
                  ).p(10)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
