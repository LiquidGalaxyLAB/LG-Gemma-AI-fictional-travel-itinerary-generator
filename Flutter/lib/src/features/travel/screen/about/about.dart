import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Center(child: Text('About Us')),
      ),
      body: SafeArea(child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
        
          children: [
            SizedBox(height: 30,),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("GEMMA FICTIONAL TRAVELLER", style: GoogleFonts.bebasNeue(fontSize: 30, color: Colors.white),),
                  Text("A TRAVELLER'S POV", style: GoogleFonts.bebasNeue(fontSize: 40, color: Colors.white),),
                ],
              ),
            ),
            SizedBox(height: 30,),
            // Center(
            //   child: Container(
            //       width: MediaQuery.of(context).size.width * 0.8,
            //     child: Text(textAlign: TextAlign.center,style: GoogleFonts.kanit(
            //          color: Colors.white70, fontSize: 20),
            //       "Welcome to our app, where AI brings storytelling to life. Choose a destination, and our AI will craft a captivating tale centered around key points of interest. As you virtually tour each location, experience the story unfolding in synchronized paragraphs on your LG Rig. For accessibility, enjoy synthesized voice narration powered by cutting-edge technology. Start your journey into imaginative travel narratives today.")
            //     ,),
            // ),
            // SizedBox(height: 30,),
            Padding(
              padding:  EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.05, MediaQuery.of(context).size.height * 0.01, MediaQuery.of(context).size.width * 0.05, MediaQuery.of(context).size.height * 0.01),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(width: MediaQuery.of(context).size.width * 0.6,
                child: Flexible(
                    child: Text( style: GoogleFonts.roboto(fontSize: 18, color: Colors.white70),
                        "Liquid Galaxy is a remarkable panoramic system that is tremendously compelling. It started off as a Google 20% project to run Google Earth across a small cluster of PC's and it has grown from there! Open source applications such as the MPlayer video player have been extended to run on Liquid Galaxy.")),),
                Spacer(),
                  Container(width: MediaQuery.of(context).size.width * 0.2,
                  child: Image(
                    image: AssetImage('assets/images/lool.png'),
                  ),),
              ],),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.05, MediaQuery.of(context).size.height * 0.01, MediaQuery.of(context).size.width * 0.05, MediaQuery.of(context).size.height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(width: MediaQuery.of(context).size.width * 0.2,
                    child: Image(
                      image: AssetImage('assets/images/gemma.png'),
                    ),),
                  Spacer(),
                  Container(width: MediaQuery.of(context).size.width * 0.6,
                    child: Flexible(
                        child: Text( style: GoogleFonts.roboto(fontSize: 18, color: Colors.white70),
                            "Gemma is a family of lightweight, state-of-the-art open models built from the same research and technology used to create the Gemini models. Developed by Google DeepMind and other teams across Google, Gemma is named after the Latin gemma, meaning precious stone. The Gemma model weights are supported by developer tools that promote innovation, collaboration, and the responsible use of artificial intelligence (AI).")),),

                ],),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.05, MediaQuery.of(context).size.height * 0.01, MediaQuery.of(context).size.width * 0.05, MediaQuery.of(context).size.height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: MediaQuery.of(context).size.width * 0.6,
                    child: Flexible(
                        child: Text( style: GoogleFonts.roboto(fontSize: 18, color: Colors.white70),
                            "Hi there! I'm Shiven, currently a third-year college student in India. I developed this project as part of GSOC 2024. I specialize in Full Stack Development with some background in AI. I hope you enjoy using this application! ")),),
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.1),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Image(
                        image: AssetImage('assets/images/developer.jpeg'),
                      ),),
                  ),
                ],),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.05, MediaQuery.of(context).size.height * 0.01, MediaQuery.of(context).size.width * 0.05, MediaQuery.of(context).size.height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Image(
                      image: AssetImage('assets/images/gsoc.png'),
                    ),),
                  Spacer(),

                  Container(width: MediaQuery.of(context).size.width * 0.6,
                    child: Flexible(
                        child: Text( style: GoogleFonts.roboto(fontSize: 18, color: Colors.white70),
                            "Google Summer of Code is a global, online program focused on bringing new contributors into open source software development. GSoC Contributors work with an open source organization on a 12+ week programming project under the guidance of mentors.")),),

                ],),
            ),

          ],
        ),
      )),
    );
  }
}
