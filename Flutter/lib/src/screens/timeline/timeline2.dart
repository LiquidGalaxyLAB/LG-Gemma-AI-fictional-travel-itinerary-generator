import 'dart:ui';

import 'package:liquid_galaxy_rig/src/data/model/itenaryModel.dart';
import 'package:liquid_galaxy_rig/src/screens/final/widgets/maps/maps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../data/Repository/itenary.dart';
import '../../data/model/DayWiseModel.dart';
List<String> weeks = ["Mon","Tues","Wed","Thurs","Fri","Sat"];
List<Color> daycolor= [Colors.white,Colors.redAccent,Colors.greenAccent,Colors.amberAccent,Colors.purpleAccent,Colors.deepPurpleAccent,Colors.pinkAccent,Colors.lightBlueAccent,Colors.white,Colors.redAccent,Colors.greenAccent,Colors.amberAccent,Colors.purpleAccent,Colors.deepPurpleAccent,Colors.pinkAccent,Colors.lightBlueAccent,Colors.white,Colors.redAccent,Colors.greenAccent,Colors.amberAccent,Colors.purpleAccent,Colors.deepPurpleAccent,Colors.pinkAccent,Colors.lightBlueAccent,Colors.white,Colors.redAccent,Colors.greenAccent,Colors.amberAccent,Colors.purpleAccent,Colors.deepPurpleAccent,Colors.pinkAccent,Colors.lightBlueAccent];
class TimeLine2 extends StatelessWidget {
   TimeLine2({super.key, required this.query});
   final String query;
  DayWiseModel itenary = DayWiseModel();
  Future req() async {
    ItenaryRepo repo = ItenaryRepo();
    itenary = await repo.DayWise(query);
  }


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
          FutureBuilder(
              future: req(),
              builder: (BuildContext, AsyncSnapshot) {
                if (AsyncSnapshot.connectionState ==ConnectionState.done) {
                  return SingleChildScrollView(
                    child: SafeArea(
                      child: Column(
                        children: [
                          ///Weeks
                          // SingleChildScrollView(
                          //   scrollDirection: Axis.horizontal,
                          //   child: Row(
                          //     children: [
                          //       for(int i=0;i<weeks.length;i++)
                          //         GlassContainer(
                          //           borderRadius: BorderRadius.circular(50),
                          //             opacity: 0.15,
                          //             child: Text(weeks[i],style: TextStyle(fontSize: 30,color: Colors.white),).p(20)
                          //         ).p(10),
                          //
                          //     ],
                          //   ),
                          // ),
                          SizedBox(height: 30,),
                          for(int i =0;i<itenary.items!.length;i++)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    GlassContainer(child: Container(height: 1,width:1,decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle)).p(15),opacity: 0.15,borderRadius: BorderRadius.circular(100),height: 50,width: 50,).pOnly(left: 10,right: 10,),
                                    Expanded(
                                      child: GlassContainer(
                                        child: Row(
                                          children: [

                                            Container(height: 100,child: Image.network(itenary.items![i].imageLink!,width: 100,fit: BoxFit.cover,)),
                                            SizedBox(width: 20,),
                                            Flexible(child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color:Colors.white,),child: Text(itenary.items![i].day!,style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 9,color: Colors.black,fontWeight: FontWeight.bold),)).p(6)),
                                                  ],
                                                ),

                                                Text(itenary.items![i].name!,style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                                Text(itenary.items![i].time!,style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey),)),
                                              ],
                                            )),
                                            SizedBox(width: 10,),

                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                                i==itenary.items!.length-1?Container(): Transform.scale(scale: 1.5,child: Container(height: 50,width: 1,color: Colors.white,)).pOnly(left: 34),

                              ],
                            ),

                        ],
                      ),
                    ),
                  );
                }
                else{
                  return CircularProgressIndicator().centered();
                }
              }
          ),

        ],
      ),
    );
  }
}
