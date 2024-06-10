import 'package:ai_travel_planner/features/travel/screen/voice/voiceScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../voice/voice.dart';
class VoiceCommandFloatingButton extends StatelessWidget {
  const VoiceCommandFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: CircleBorder(),
      onPressed: (){},
      foregroundColor: Colors.blue,
      backgroundColor: CupertinoColors.activeBlue,
      child: MyButton(),
    );
  }
}