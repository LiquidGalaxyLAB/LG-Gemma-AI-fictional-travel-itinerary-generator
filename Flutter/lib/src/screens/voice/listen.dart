import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:speech_to_text/speech_to_text.dart' ;

// import '../itenary/schedule.dart';

class Listening extends StatefulWidget {
  const Listening({super.key});

  @override
  State<Listening> createState() => _ListeningState();
}

class _ListeningState extends State<Listening> {

  var Gotit="jaipur";
  final SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
    });
  }


  final myController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        elevation: 0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        onPressed:
        _speechToText.isNotListening ? _startListening : _stopListening,
        tooltip: 'Listen',
        child: Container(
            height: 150,
            width: 150,
            color: Colors.blue,

            child: Icon(_speechToText.isNotListening ? Iconsax.microphone_slash : Iconsax.microphone,color: Colors.white,)),
      ),

      body: Stack(
          children: [
            Center(child: Image.asset("asset/BHFO.gif")),
            Container(width: double.infinity,height: MediaQuery.of(context).size.height,child: Image.asset("asset/sky1.jpg",fit: BoxFit.fill,)),

            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.83,
                  width: MediaQuery.of(context).size.width,

                  child:

                  TextField(


                    controller: TextEditingController(
                        text: _lastWords

                    ),
                    onChanged: (value) {

                      // setState(() {
                      _lastWords = value;
                      Gotit=_lastWords;
                      // });
                    },
                    style: TextStyle( fontSize: 36,fontWeight: FontWeight.w300,color: Colors.white),

                    decoration: InputDecoration(
                      helperText: _speechToText.isListening  ? '$_lastWords'
                          : _speechEnabled
                          ? 'Tap the microphone to start listening...'
                          : 'Speech not available',

                    ),).pLTRB(50, 150, 10, 0),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,shape: CircleBorder(),),
                  onPressed: (){
                  // Get.to(Scheduler(title:Gotit));
                    print("task doneee");
                }, child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Iconsax.arrow_right4,color: Colors.white,),
                )
                )
              ],
            ),

          ]
      ),
    );
  }
}