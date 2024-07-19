import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:liquid_galaxy_rig/src/constants/values.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/ssh_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/settings_controller.dart';
import 'package:liquid_galaxy_rig/src/helpers/kml_helper.dart';
import 'package:liquid_galaxy_rig/src/screens/settings/settings_view.dart';
import 'package:liquid_galaxy_rig/src/data/Repository/itenary.dart';
import 'package:liquid_galaxy_rig/src/data/Repository/itenary.dart';
import 'package:liquid_galaxy_rig/src/data/model/itenaryModel.dart';

class LgHome extends StatelessWidget {
  const LgHome(
      {super.key,
      required this.settings,
      required this.sshController,
      required this.lgController});
  final SshController sshController;
  final SettingsController settings;
  final LgController lgController;
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LG Fictional Traveller Tool"),
        actions: [
          // IconButton(
          //   icon: const Icon(Icons.settings),
          //   onPressed: () {
          //     Navigator.restorablePushNamed(context, SettingsView.routeName);
          //   },
          // ),
        ],
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 200,
                  child: Image(
                    image: AssetImage('assets/images/logoside.png'),                ),
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Container(
                      width:  MediaQuery
                    .of(context)
                    .size
                    .width * .5,
                      child: Column(
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: (sshController.client != null)
                                ? () async {
                                    try {
                                      await sshController.ping();
                                      String res = await sshController.runCommand('uptime');
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text('Ping successful: $res'),
                                        ),
                                      );
                                    } catch (e) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content: Text('Failed to ping'),
                                        ),
                                      );
                                    }
                                  }
                                : null,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * .3
                                  , child: const Text("Test SSH",
                              textAlign: TextAlign.center
                              , style: TextStyle(fontSize: 30),
                              )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: (sshController.client != null)
                                  ? () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: const Text("Restart Liquid Galaxy"),
                                          content: const Text(
                                              "Are you sure you want to restart Liquid Galaxy?"),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text("Cancel"),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                  const SnackBar(
                                                    content: Text('Restarting Liquid Galaxy'),
                                                  ),
                                                );
                                                lgController.rebootLg(context);
                                              },
                                              child: const Text("Restart"),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  : null,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * .3
                                    , child: const Text("Restart Liquid Galaxy",
                                      textAlign: TextAlign.center
                                      , style: TextStyle(fontSize: 30),
                                    )
                                ),
                              ),
                            ),
                          ),
                          // ElevatedButton(
                          //   onPressed: (sshController.client != null)
                          //       ? () async {
                          //           try {
                          //             await lgController.dispatchQuery(
                          //               context,
                          //               'flytoview=${KmlHelper.lookAtLinear(30.733366, 76.779768, ConstantValues.tourZoomScale * 50, 0, 0)}',
                          //             );
                          //             for (double i = 0; i <= 180; i += 17) {
                          //               await lgController.dispatchQuery(context,
                          //                   'flytoview=${KmlHelper.orbitLookAtLinear(30.733366, 76.779768, ConstantValues.tourZoomScale * 50, 0, i)}');
                          //               await Future.delayed(
                          //                   const Duration(milliseconds: 1000));
                          //             }
                          //           } catch (e) {
                          //             ScaffoldMessenger.of(context).showSnackBar(
                          //               const SnackBar(
                          //                 content: Text('Failed to dispatch KML query'),
                          //               ),
                          //             );
                          //           }
                          //         }
                          //       : null,
                          //   child: const Text("Show Dev (Shiven) Location"),
                          // ),
                          ElevatedButton(
                            onPressed: (sshController.client != null)
                                ? () async {
                                    print(settings.lgRigsNum);
                                    int leftRig = (int.parse(settings.lgRigsNum!) / 2).floor() + 2;
                              try {
                                      await lgController.dispatchSlaveKml(
                                        context,
                                        leftRig,
                                        KmlHelper.screenOverlayImage(
                                          "https://i.ibb.co/SrR458z/lologogd.png",
                                            770 / 1380
                                        ),
                                      );
                                    } catch (e) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content: Text('Failed to dispatch KML query'),
                                        ),
                                      );
                                    }
                                  }
                                : null,
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * .3
                                  , child: const Text("Show Logos",
                                    textAlign: TextAlign.center
                                    , style: TextStyle(fontSize: 30),
                                  )
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      width:  MediaQuery
                          .of(context)
                          .size
                          .width * .5,
                      child: Column(
                        children: <Widget>[


                          ElevatedButton(
                            onPressed: (sshController.client != null)
                                ? () {
                              print(settings.lgRigsNum);
                              try {
                                lgController.clearSlaveKml(
                                    context, int.parse(settings.lgRigsNum!) - 1);
                              } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Failed to dispatch KML query'),
                                  ),
                                );
                              }
                            }
                                : null,
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * .3
                                  , child: const Text("Clear Right Slave",
                                    textAlign: TextAlign.center
                                    , style: TextStyle(fontSize: 30),
                                  )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: (sshController.client != null)
                                  ? () {
                                print(settings.lgRigsNum);
                                try {
                                  lgController.clearSlaveKml(
                                      context, int.parse(settings.lgRigsNum!));
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Failed to dispatch KML query'),
                                    ),
                                  );
                                }
                              }
                                  : null,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * .3
                                    , child: const Text("Clear Left Slave",
                                      textAlign: TextAlign.center
                                      , style: TextStyle(fontSize: 30),
                                    )
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: (sshController.client != null)
                                ? () async {
                              try {
                                await lgController.setRefresh(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Refreshing LGs'),
                                  ),
                                );
                              } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Failed to dispatch KML query'),
                                  ),
                                );
                              }
                            }
                                : null,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * .3
                                  , child: const Text("Set Slave Refresh",
                                    textAlign: TextAlign.center
                                    , style: TextStyle(fontSize: 30),
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
