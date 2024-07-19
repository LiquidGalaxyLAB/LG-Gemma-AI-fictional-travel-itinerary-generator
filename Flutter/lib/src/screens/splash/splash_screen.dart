import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/ssh_controller.dart';
import 'package:liquid_galaxy_rig/src/features/travel/screen/home/homescreen.dart';
import 'package:liquid_galaxy_rig/src/controllers/settings_controller.dart';
import 'package:liquid_galaxy_rig/warningPage.dart';
import 'package:liquid_galaxy_rig/warningPref.dart';
import 'package:shared_preferences/shared_preferences.dart';
bool? isWarning;
class SplashScreen extends StatefulWidget {
  const SplashScreen(
      {super.key,
        required this.settings,
        required this.sshController,
        required this.lgController});
  final SettingsController settings;
  final SshController sshController;
  final LgController lgController;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override

  void initState() {

    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Warningpref.isWarning!?HomeScreen(
            controller: widget.settings,
            sshController: widget.sshController,
            lgController: widget.lgController,
          ):Warningpage(settings: widget.settings,
            sshController: widget.sshController,
            lgController: widget.lgController,),
        ),
      );

    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.black
        ),
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Image.asset("assets/images/logoside.png",width: 200,),
                  Image.asset("assets/images/lool.png",width: 200,),
                  Image.asset("assets/images/gsoc20.png",width: 200,),
                  Image.asset("assets/images/Android_robot.svg.png",width: 200,),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/lgil.png",width: 200,),
                  Image.asset("assets/images/flil.png",width: 200,),
                  Image.asset("assets/images/lab.png",width: 200,),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children : [
                    Image.asset("assets/images/lab2.png",width: 200,),
                    Image.asset("assets/images/design-58ff752d-6243-4d3a-b637-61e19edc9c9f.png",width: 200,),
                    Image.asset("assets/images/LiquidGalaxyAI.png",width: 200,),
                  ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
