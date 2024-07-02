import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/ssh_controller.dart';
import 'package:liquid_galaxy_rig/src/features/travel/screen/home/homescreen.dart';
import 'package:liquid_galaxy_rig/src/screens/lg_home/lg_home_screen.dart';
import 'package:liquid_galaxy_rig/src/controllers/settings_controller.dart';

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

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomeScreen(
            controller: widget.settings,
            sshController: widget.sshController,
            lgController: widget.lgController,
          ),
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
        child: const Center(
          child: SizedBox(
            width: 200,
            child: Image(
              image: AssetImage('assets/images/lool.png'),
            ),
          ),
        ),
      ),
    );
  }
}
