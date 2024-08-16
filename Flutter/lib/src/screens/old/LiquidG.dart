
import 'dart:convert';
import 'dart:io';

import 'package:dartssh2/dartssh2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'Settings.dart';


class LiquidButtons extends StatefulWidget {
  var ip;
  var user;
  String pass;
  int port;

  LiquidButtons({
    Key? key,
    required this.ip,
    required this.user,
    required this.pass,
    required this.port,
  }) : super(key: key);


  static orbitBalloon(
      String cityImage,
      ) =>
      '''<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2" xmlns:gx="http://www.google.com/kml/ext/2.2" xmlns:kml="http://www.opengis.net/kml/2.2" xmlns:atom="http://www.w3.org/2005/Atom">
<Document>
 <name>About Data</name>
 <Style id="about_style">
   <BalloonStyle>
     <textColor>ffffffff</textColor>
     <text>
        <h1>Delhi</h1>
        <h1>Shiven</h1>
        <img src="${cityImage}" alt="City" width="300" height="200" />
     </text>
     <bgColor>ff15151a</bgColor>
   </BalloonStyle>
 </Style>
 <Placemark id="ab">
   <description>
   </description>
   <LookAt>
  <longitude>77.2969273620498</longitude><latitude>28.6156170762213</latitude>
     <heading>0</heading>
     <tilt>0</tilt>
     <range>200</range>
   </LookAt>
   <styleUrl>#about_style</styleUrl>
   <gx:balloonVisibility>1</gx:balloonVisibility>
   <Point>
     <coordinates>77.2969273620498,28.6156170762213,0</coordinates>
   </Point>
 </Placemark>
</Document>
</kml>''';

  @override
  State<LiquidButtons> createState() => _LiquidButtonsState();
}

class _LiquidButtonsState extends State<LiquidButtons> {


  //-----------------------reboot function -----------------------------------------//
  Future<void> reboot() async {
    final client = SSHClient(
      await SSHSocket.connect(widget.ip
          , widget.port,
          timeout: const Duration(seconds: 5)),
      username: widget.user
      // 'lg'
      ,
      onPasswordRequest: () => widget.pass
      // 'lg'
      ,

    );
    print('heyyyyyyy');
    print(client.toString());

    for(var i=3;i>=1;i--)
    {
      await client.run('/home/lg/bin/lg-locate');
      await client.run(
          'sshpass -p ${'lg'} ssh -t lg$i "echo ${'lg'} | sudo -S reboot"');
    }
    // 'sshpass -p ${'lg'} ssh -t lg$i "echo ${'lg'} | sudo -S reboot"'
  }

//---------------------------Move to home city function -----------------------------------/
  Future<void> move() async {
    print(widget.ip + 'ip');
    print(widget.pass+ 'pass');
    print(widget.user + 'user');


    final client = SSHClient(
      await SSHSocket.connect(
          widget.ip
           //'192.168.56.101'
          ,
          widget.port,
          timeout: const Duration(seconds: 5)),
      username:
      widget.user
       //'lg'
      ,
      onPasswordRequest: () =>
      widget.pass
       //lg'
      ,
    );
    print('heeeeeey');
    await client.run(
        "echo 'flytoview= <LookAt><longitude>77.2969273620498</longitude><latitude>28.6156170762213</latitude><range>200.57188054921561</range><tilt>0</tilt><heading>0</heading><gx:altitudeMode>relativeToGround</gx:altitudeMode></LookAt>' > /tmp/query.txt");
  }

//--------------------------------------orbit on the home city---------------------------------------------//
  Future<void> connection() async {

    final client = SSHClient(
      await SSHSocket.connect(
          widget.ip
          // '192.168.56.101'
          ,
          widget.port,
          timeout: const Duration(seconds: 5)),
      username: widget.user
      // 'lg'
      ,
      onPasswordRequest: () => widget.pass
      // 'lg'
      ,
    );

    print('he676867y');
    var j = 0;
    for (int i = 0; i <= 180; i += 17) {
      if (j == 360) {
        j = 0;
      }
      await client.run(
          'echo "flytoview= <LookAt><longitude>77.2969273620498</longitude><latitude>28.6156170762213</latitude><range>200.57188054921561</range><tilt>${j}</tilt><heading>${i}</heading><gx:altitudeMode>relativeToGround</gx:altitudeMode></LookAt>" > /tmp/query.txt');
      j++;
      await Future.delayed(const Duration(milliseconds: 2000));
    }
    final uptime = await client.run('uptime');
    print(utf8.decode(uptime));
  }

//-------------------------------------display on the Rig ---------------------------------------------------/
  Future<void> onlgRig() async {
    final client = SSHClient(
      await SSHSocket.connect(
          widget.ip,
          widget.port,
          timeout: const Duration(seconds: 5)),
      username: widget.user
      // 'lg'
      ,
      onPasswordRequest: () => widget.pass
      // 'lg'
      ,
    );

    print('heiiiy');

    String img='https://e7.pngegg.com/pngimages/150/269/png-clipart-rin-okumura-youtube-blue-exorcist-anime-hd-elements-black-hair-manga-thumbnail.png';
    await  client.execute("echo '${LiquidButtons.orbitBalloon(img)}' > /var/www/html/kml/slave_1.kml");


    for (var i = 1; i <= 2; i++) {
      String search =
          '<href>##LG_PHPIFACE##kml\\/slave_$i.kml<\\/href><refreshMode>onInterval<\\/refreshMode><refreshInterval>2<\\/refreshInterval>';
      String replace = '<href>##LG_PHPIFACE##kml\\/slave_$i.kml<\\/href>';

      await client.run(
          'sshpass -p ${'lg'} ssh -t lg$i \'echo ${'lg'} | sudo -S sed -i "s/$search/$replace/" ~/earth/kml/slave/myplaces.kml\'');
    }



    for (var i = 1; i <= 2; i++) {
      String search = '<href>##LG_PHPIFACE##kml\\/slave_$i.kml<\\/href>';
      String replace =
          '<href>##LG_PHPIFACE##kml\\/slave_$i.kml<\\/href><refreshMode>onInterval<\\/refreshMode><refreshInterval>2<\\/refreshInterval>';

      await client.run(
          'sshpass -p ${'lg'} ssh -t lg$i \'echo ${'lg'} | sudo -S sed -i "s/$replace/$search/" ~/earth/kml/slave/myplaces.kml\'');
      await client.run(
          'sshpass -p ${'lg'} ssh -t lg$i \'echo ${'lg'} | sudo -S sed -i "s/$search/$replace/" ~/earth/kml/slave/myplaces.kml\'');

    }
    print('hello');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),

                color: Colors.black.withOpacity(1)
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjzI4JzY6oUy-dQaiW-HLmn5NQ7qiw7NUOoK-2cDU9cI6JwhPrNv0EkCacuKWFViEgXYrCFzlbCtHZQffY6a73j6_ATFjfeU7r6OxXxN5K8sGjfOlp3vvd6eCXZrozlu34fUG5_cKHmzZWa4axb-vJRKjLr2tryz0Zw30gTv3S0ET57xsCiD25WMPn3wA/s800/LIQUIDGALAXYLOGO.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 1,

                ).p(30),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: widget.ip == ''? Colors.red.withOpacity(0.5) : Colors.white.withOpacity(0.1),
                  ),
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextButton(
                    child: Text('Change Setting',
                        style: TextStyle(fontSize: 23, color: Colors.white)),
                    onPressed: () {
                      Get.to( Setting());
                    },
                  ),
                ).p(20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextButton(
                    child: Text('Reboot the lg',
                        style: TextStyle(fontSize: 23, color: Colors.white)),
                    onPressed: () {
                      print('he676867y');
                      reboot();
                    },
                  ),
                ).p(20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextButton(
                    child: Text('Move the lg to Home City',
                        style: TextStyle(fontSize: 23, color: Colors.white)),
                    onPressed: () {
                      move();
                    },
                  ),
                ).p(20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextButton(
                    child: Text('Make an orbit on arrival',
                        style: TextStyle(fontSize: 23, color: Colors.white)),
                    onPressed: () {
                      connection();
                    },
                  ),
                ).p(20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white.withOpacity(0.1)
                  ),

                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextButton(
                    child: Text(
                        ' City name and your name ',
                        style: TextStyle(fontSize: 23, color: Colors.white)),
                    onPressed: () {
                      onlgRig();
                    },
                  ),
                ).p(20)
              ],
            ),
          ).centered(),
        ),
      ),
    );
  }
}

