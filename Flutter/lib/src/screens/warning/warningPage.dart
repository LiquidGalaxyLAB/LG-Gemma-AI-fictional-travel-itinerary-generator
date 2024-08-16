import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/settings_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/ssh_controller.dart';
import 'package:liquid_galaxy_rig/src/screens/home/homescreen.dart';
import 'package:liquid_galaxy_rig/src/constants/sharedPreferences/warningPref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Warningpage extends StatefulWidget {
  const Warningpage({super.key,required this.settings,required this.sshController,required this.lgController});

  @override
  State<Warningpage> createState() => _WarningpageState();
  final SettingsController settings;
  final SshController sshController;
  final LgController lgController;
}

class _WarningpageState extends State<Warningpage> {
  @override

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text("""
Be aware of AI hallucinations.""", style: GoogleFonts.bebasNeue(fontSize: 50,  color: Colors.white),),
                SizedBox(height: 30,),
                Text("""The state of the art of most AI tools as 2024 can give you sometimes incorrect answers, or even the so called Hallucinations: AI hallucinations are incorrect or misleading results that AI models generate. These errors can be caused by a variety of factors, including insufficient training data, incorrect assumptions made by the model, or biases in the data used to train the model.
                The Liquid Galaxy project has no control over this, and the contents responsibility is of the owners of the respective Large Language models used.
            """,textAlign: TextAlign.center,style: GoogleFonts.robotoCondensed(fontSize: 20, color: Colors.white),),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ElevatedButton(
                    //     style: ElevatedButton.styleFrom(foregroundColor: Colors.black,backgroundColor: Colors.white),
                    //     onPressed: () {}, child: Padding(
                    //   padding: const EdgeInsets.all(15.0),
                    //   child: Text("Decline", style: TextStyle(fontSize: 20),),
                    // )),
                    InkWell(
                      child: Container(decoration: BoxDecoration(border: Border.all(width: 2.0,  color: Colors.white), borderRadius: BorderRadius.circular(10)),child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 15, 30, 15),
                        child: Text("Decline", style: GoogleFonts.bebasNeue(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold)),
                      )),
                    ),
                    SizedBox(width: 60,),
                    InkWell(
                      onTap: () async {await Warningpref.setWarning(true); Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            controller: widget.settings,
                            sshController: widget.sshController,
                            lgController: widget.lgController,
                          ),
                        ),
                      );},
                      child: Container(decoration: BoxDecoration(border: Border.all(width: 2.0,  color: Colors.white), borderRadius: BorderRadius.circular(10)),child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 15, 30, 15),
                        child: Text("Accept", style: GoogleFonts.bebasNeue(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold)),
                      )),
                    ),
                    // ElevatedButton(
                    //     style: ElevatedButton.styleFrom(foregroundColor: Colors.black,backgroundColor: Colors.white),
                    //     onPressed: () async {await Warningpref.setWarning(true); Navigator.of(context).pushReplacement(
                    //       MaterialPageRoute(
                    //         builder: (context) => HomeScreen(
                    //           controller: widget.settings,
                    //           sshController: widget.sshController,
                    //           lgController: widget.lgController,
                    //         ),
                    //       ),
                    //     );}, child: Padding(
                    //   padding: const EdgeInsets.all(15.0),
                    //   child: Text("Accept", style: TextStyle(fontSize: 20)),
                    // )),
             ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

