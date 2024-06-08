import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';


import 'LiquidG.dart';

class Setting extends StatefulWidget {
  Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  String ip ='';

  String user ='';

  String pass='';

  int port = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height*0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black.withOpacity(0.8),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(.1),
                    label: "IP Address".text.white.make(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),

                // keyboardType: TextInputType.number,
                onChanged: (v) {
                  ip=v;
                },
              ).p(20),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(.1),
                    label: "User Name".text.white.make(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                // keyboardType: TextInputType.number,
                onChanged: (v) {
                  user = v;
                },
              ).p(20),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(.1),
                    label: "Password".text.white.make(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                // keyboardType: TextInputType.number,
                onChanged: (v) {
                  pass = v;
                },
              ).p(20),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(.1),
                    label: "Port".text.white.make(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                // keyboardType: TextInputType.number,
                onChanged: (v) {
                  port = int.parse(v);
                },
              ).p(20),
              ElevatedButton(onPressed: (){
                Get.to( LiquidButtons(ip:ip,user: user,pass: pass, port: port));


              }, child: Text("SUBMIT", style: TextStyle(color: Colors.black),),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(color: Colors.white)
                        )
                    )
                ),
              ).p(20)
            ],
          ).p(50),
        ),
      ).centered().p(10),
    );
  }
}