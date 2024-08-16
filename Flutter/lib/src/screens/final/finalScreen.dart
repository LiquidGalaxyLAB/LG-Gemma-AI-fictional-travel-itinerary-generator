import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:liquid_galaxy_rig/env/env.dart';
import 'package:liquid_galaxy_rig/src/controllers/settings_controller.dart';
import 'package:liquid_galaxy_rig/src/data/Repository/itenary.dart';
import 'package:liquid_galaxy_rig/src/data/model/itenaryModel.dart';
import 'package:liquid_galaxy_rig/src/screens/final/widgets/infiniteDraggableSlider/coverImage.dart';
import 'package:liquid_galaxy_rig/src/screens/final/widgets/infiniteDraggableSlider/infiniteDraggableSlider.dart';
import 'package:liquid_galaxy_rig/src/screens/seemore/seenore.dart';
import 'package:liquid_galaxy_rig/src/screens/timeline/timeline2.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import "dart:convert";
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:liquid_galaxy_rig/src/screens/final/widgets/maps/maps.dart';
import 'package:liquid_galaxy_rig/src/screens/final/widgets/maps/maps2.dart';
import 'package:liquid_galaxy_rig/src/screens/final/widgets/maps/maps3.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/ssh_controller.dart';
import 'package:liquid_galaxy_rig/src/helpers/kml_helper.dart';
import 'package:liquid_galaxy_rig/src/constants/values.dart';
import 'package:latlong2/latlong.dart' as latLng;

class Finalscreen extends StatefulWidget {
  Finalscreen({super.key, required this.query, required this.days,
    required this.settings,
    required this.sshController,
    required this.lgController});
  final SshController sshController;
  final SettingsController settings;
  final LgController lgController;
   String query;
  final int days;
  @override
  State<Finalscreen> createState() => _FinalscreenState();
}

class _FinalscreenState extends State<Finalscreen> {
  Data itenary = Data();
  bool _isDataLoaded = false;
  String story = 'Traveller Story';
  latLng.LatLng _currentCenter = latLng.LatLng(28.65131467050408, 77.18661503944612);
  @override
  void initState() {
    super.initState();
    // Fetch data when the widget initializes
    req();
  }

  void _updateCenter(latLng.LatLng newCenter) {
    setState(() {
      print("update kiya");
      _currentCenter = newCenter; // Update center
      print(_currentCenter.toString());

    });
  }
  List<String> image = [
    "asset/travel1.jpg",
    "asset/travel2.jpg",
    "asset/travel3.jpg",
    "asset/travel1.jpg",
    "asset/travel2.jpg",
    "asset/travel3.jpg",
  ];

  List<String> tabText = [];
  bool isON = false;
  bool isOrbitON = false;
  List<bool> isOrbit = [];
  String tex = '''You’re an experienced travel planner who has helped countless adventurers create bespoke travel itineraries based on their interests and preferences. One of your specialties is curating personalized travel plans that cater to individuals who are extroverted and have a taste for thrilling activities like swimming, skydiving, dancing, shopping, exploring different cultures, and discovering hidden gems around the world.
Your task is to create a customized travel itinerary for an extroverted individual who loves swimming, skydiving, dancing, shopping, immersing themselves in different cultures, and uncovering hidden gems. The itinerary should include the best destinations and activities that cater to these interests, ensuring a well-rounded and unforgettable travel experience.
Remember to consider each activity carefully, suggest suitable destinations, and provide a mix of popular attractions and off-the-beaten-path experiences to cater to the traveler’s adventurous spirit and outgoing nature.
For example, when recommending a destination for swimming, consider suggesting pristine beaches with clear waters such as the Maldives or vibrant swimming holes like the cenotes in Mexico. For dancing, recommend cities known for their lively nightlife and dance clubs such as Havana, Cuba, or Rio de Janeiro, Brazil. When highlighting hidden gems, suggest lesser-known spots like the colorful village of Chefchaouen in Morocco or the secluded beaches of Fernando de Noronha in Brazil.''';
  void fetchPlaces ()async {
    int PlacesTotal = itenary.places!.length;
    for(int i = 0;i< PlacesTotal; i++) {
      String imagelink = await fetchImageLink(
          Env.ACCESS_TOKEN, '${itenary.places![i].name}');
      setState(() {
        itenary.places![i].imageLink =  imagelink;

      });
    }
  }
  Future<String> fetchImageLink(String apiKey, String placeName) async {
    final String url = 'https://pixabay.com/api/';
    final Map<String, String> params = {
      'key': apiKey,
      'q': placeName,
      'image_type': 'photo',
      'per_page': '3',
    };
    print("jfkdlfjkld");
    final Uri uri = Uri.parse(url).replace(queryParameters: params);

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['hits'] != null && data['hits'].isNotEmpty) {
          final String imageUrl = data['hits'][0]['largeImageURL'];
          print('Image URL: $imageUrl');
          // Update your model or state with the image URL
          return imageUrl;
        } else {
          print('No hits found for place: $placeName');
        }
      } else {
        print('Failed to load image data: ${response.statusCode}');
      }
    } catch (e) {
      print('Image error for place $placeName: $e');
    }
    return 'https://i.ibb.co/bXtZnP6/pexels-photo-1115175.jpg';
  }

  Future req() async {
   ItenaryRepo repo = ItenaryRepo();
   print("req is called");
try {
  itenary = await repo.FetchItemAI(widget.query, widget.days * 2);
  int totalPlaces = itenary.places!.length;
  List <bool> isorbits = [];
  for (int i = 0; i < totalPlaces; i++)
    isorbits.add(false);
  setState(() {
    _isDataLoaded = true;
    isOrbit = isorbits;
  });
  _updateCenter(latLng.LatLng(double.parse(
      itenary.places![0].latitude!),
      double.parse(
          itenary.places![0].longitude!)));
  setState(() {
    story =
    '${itenary.places![0].dailyLog!} ${itenary
        .places![0].description!}';
  });
  fetchPlaces();
}
catch(e)
    {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Check Gemini API Key Or Try Again", style: TextStyle(color: Colors.red),)),

      );
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Row(
          children: [
            Column(
              children: [
                Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(height: MediaQuery.of(context).size.height * 0.8,child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: MapScreen2(
                          settings: widget.settings,
                          on: isON,
                          sshController: widget.sshController,
                          lgController: widget.lgController,
                          initialCenter: _currentCenter, initialZoom: 13.0,  updateCenter: _updateCenter),
                    )),
                  ),
                ),
              ),
              Container(
              width: MediaQuery.of(context).size.width * 0.6,

                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Container(
                          decoration: BoxDecoration(color: Color.fromRGBO(20, 20, 20,1)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(story, style: TextStyle(color: Colors.white),),
                          ))),
                ),
              )]
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),),
              child: Stack(
                children: [
                  Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset(
                        "assets/images/sky1.jpg",
                        fit: BoxFit.fill,
                      )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0 , 0 ),
                  child: SafeArea(
                    child: _isDataLoaded
                        ? SingleChildScrollView(
                      child: Column(
                        children: [
                          AppBar(backgroundColor: Colors.transparent,foregroundColor: Colors.white,centerTitle:true ,title: Text(
                            "Your Legend",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),actions: [IconButton(onPressed: ()
                          {

                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) =>
                                Scaffold(
                                  body: SafeArea(
                                    child: Container(
                                      height: MediaQuery.of(context).size.height,
                                      width: MediaQuery.of(context).size.width,
                                      child: Stack(
                                        children: [
                                          MapScreen3(
                                              settings: widget.settings,
                                              sshController: widget.sshController,
                                              lgController: widget.lgController,
                                              itenary: itenary,
                                              initialCenter: _currentCenter, initialZoom: 13.0,  updateCenter: _updateCenter),
                                          Positioned(top: 10,left: 5,child: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(CupertinoIcons.back),))
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                            )
                            );
                                                   // Get.to(TimeLine2(query: widget.query + " for ${widget.days} number of days"));

                          }, icon: Icon(Iconsax.map,color: Colors.white,))],),
                          // Center(
                          //     child: Text(
                          //       "Your Legend",
                          //       style: GoogleFonts.poppins(
                          //           textStyle: TextStyle(
                          //               fontSize: 30,
                          //               color: Colors.white,
                          //               fontWeight: FontWeight.bold)),
                          //     )),

                          ///TAbs
                          SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            direction: Axis.horizontal,
                            alignment: WrapAlignment.spaceEvenly,
                            spacing: 10,
                            runSpacing: 10,
                            children: tabText.map((text) {
                              return GlassContainer(
                                borderRadius: BorderRadius.circular(100),
                                blur: 0.1,
                                child: Container(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      text,
                                      style:
                                      TextStyle(fontSize: 10, color: Colors.white),
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),

                          // Row(
                          //   children: [
                          //     Text(
                          //       'Top Attractions',
                          //       style: TextStyle(
                          //           color: Colors.white, fontWeight: FontWeight.bold),
                          //     ),
                          //     Spacer(),
                          //     Text('More(243)',
                          //         style: TextStyle(
                          //             color: Colors.white30,
                          //             fontWeight: FontWeight.bold))
                          //   ],
                          // ).pOnly(top: 10),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          //
                          // ///Image slider
                          // SizedBox(
                          //   height: MediaQuery
                          //       .of(context)
                          //       .size
                          //       .height * 0.4,
                          //   child: InfiniteDragableSlider(
                          //     iteamCount: itenary.places!.length,
                          //     itemBuilder: (context, index) =>
                          //         MagazineCoverImage(
                          //           height: 290,
                          //           asset: itenary.places![index].imageLink!,
                          //         ),
                          //   ),
                          // ),
                          ///tags
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'TRANSPORT',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ).p(5),
                          ),
                          Container(
                            height : MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*0.95,
                            child: ListView.builder(itemCount: itenary.transport!.length,scrollDirection: Axis.horizontal,itemBuilder: (BuildContext,x){
                              return  ElevatedButton(
                                  onPressed: () => {},
                                  child: Text(
                                    itenary.transport![x],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Colors.white10),
                                  )).p(5);
                            }),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'EXPERIENCES',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ).p(5),
                          ),
                          Container(
                            height : MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*0.95,
                            child: ListView.builder(itemCount: itenary.experiences!.length,scrollDirection: Axis.horizontal,itemBuilder: (BuildContext,x){
                              return  ElevatedButton(
                                  onPressed: () => {},
                                  child: Text(
                                    itenary.experiences![x],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Colors.white10),
                                  )).p(5);
                            }),
                          ),
                          //Touring Button
                          Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            child: Text(
                              'TOURING',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ).p(5),
                          ),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all<BorderSide>(
                                    BorderSide(
                                      color: Colors.amber, // Border color
                                      width: 1, // Border width
                                    ),),
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.white10),
                                ),
                                onPressed:
                                (widget.sshController.client != null)
                                    ? () async {
                                  int PlacesTotal = itenary.places!.length;
                                  setState(() {
                                    isON = !isON;
                                  });
                                  for(int index = 0; index < PlacesTotal && isON ; index++) {
                                    try {
                                      String imageRaw = "${itenary.places![index]
                                          .imageLink}";
                                      String image = imageRaw.split('?')[0];
                                      await widget.lgController.dispatchQuery(
                                        context,
                                        // 'search=${itenary.places![index].name} ${itenary.places![index].location}'
                                        'flytoview=${KmlHelper.lookAtLinear(
                                            double.parse(
                                                itenary.places![index].latitude!),
                                            double.parse(
                                                itenary.places![index].longitude!),
                                            ConstantValues.tourZoomScale * 50, 0,
                                            0)}',
                                      );
                                      _updateCenter(latLng.LatLng(double.parse(
                                          itenary.places![index].latitude!),
                                          double.parse(
                                              itenary.places![index].longitude!)));
                                      setState(() {
                                        story =
                                        '${itenary.places![index].dailyLog!} ${itenary
                                            .places![index].description!}';
                                      });
                                      // for (double i = 0; i <= 180; i += 17) {
                                      //   await lgController.dispatchQuery(context,
                                      //       'flytoview=${KmlHelper.orbitLookAtLinear(double.parse(itenary.places![index].latitude!), double.parse(itenary.places![index].longitude!), ConstantValues.tourZoomScale * 50, 0, i)}');
                                      //   await Future.delayed(
                                      //       const Duration(milliseconds: 1000));
                                      // }
                                      int rightRig = (int.parse(
                                          widget.settings.lgRigsNum!) / 2).floor() +
                                          1;

                                      await widget.lgController.dispatchSlaveKml(
                                        context,
                                        rightRig,
                                        KmlHelper.screenOverlayImageWithStory(
                                          // "${itenary.places![index].imageLink}",
                                          //   "https://www.hindustantimes.com/ht-img/img/2023/04/22/550x309/HIDIVE_OSHI_NO_KO_1682155135941_1682155148326.jpg",
                                          image,
                                          '${itenary.places![index].dailyLog!} ${itenary.places![index].description!}',
                                          "${itenary.places![index].longitude}",
                                          "${itenary.places![index].latitude}",
                                          9 / 16,
                                        ),
                                      );
                                    } catch (e) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'Failed to dispatch KML query'),
                                        ),
                                      );
                                    }
                                    await Future.delayed(Duration(seconds: 14));                            }
                                  setState(() {
                                    isON = false;
                                  });
                                }
                                    :
                                    () async {
                                  int PlacesTotal = itenary.places!.length;
                                  setState(() {
                                    isON = !isON;
                                  });
                                  for(int index = 0; index < PlacesTotal && isON; index++) {
                                    print(_currentCenter.toString());
                                    print("current center");
                                    print("fhdkfhdkfhkd ");
                                    print("${itenary.places![index].dailyLog!}");
                                    setState(() {
                                      story = '${itenary.places![index].dailyLog!} ${itenary.places![index].description!}';
                                    });
                                    _updateCenter(latLng.LatLng(double.parse(
                                        itenary.places![index].latitude!),
                                        double.parse(
                                            itenary.places![index].longitude!)));
                                    await Future.delayed(Duration(seconds: 10));                            }
                                  setState(() {
                                    isON = false;
                                  });
                                } ,
                                child:  Text( isON ? "STOP" : "TAKE A TOUR", style: GoogleFonts.bebasNeue(color: isON ? Colors.red : Colors.white, fontSize: 40),
                                )

                            ).p(10),
                          ),

                          ///Places card
                          GlassContainer(
                            blur: 0.2,
                            borderRadius: BorderRadius.circular(20),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: itenary.places!.length,
                                itemBuilder: (BuildContext , int index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 200,
                                            width: 150,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(20),
                                              child: Image.network(
                                                itenary.places![index].imageLink!,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 30),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  itenary.places![index].name!,
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 20,

                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  itenary.places![index].attraction!,
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white.withOpacity(0.9),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  itenary.places![index].visitTime!,
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white.withOpacity(0.9),
                                                    ),
                                                  ),
                                                ),
                                                Hero(
                                                  tag: 'maploc',
                                                  child: Row(
                                                    children: [
                                                      InkWell(
                                                        // onTap: () => Get.to(SeeMore(item: itenary.places![index],)),
                                                        onTap: (widget.sshController.client != null)
                                                            ? () async {
                                                          try {
                                                            String imageRaw = "${itenary.places![index].imageLink}";
                                                            String image = imageRaw.split('?')[0];
                                                            await widget.lgController.dispatchQuery(
                                                              context,
                                                              // 'search=${itenary.places![index].name} ${itenary.places![index].location}'
                                                              'flytoview=${KmlHelper.lookAtLinear(double.parse(itenary.places![index].latitude!), double.parse(itenary.places![index].longitude!), ConstantValues.tourZoomScale * 50, 0, 0)}',
                                                            );
                                                            _updateCenter(latLng.LatLng(double.parse(itenary.places![index].latitude!), double.parse(itenary.places![index].longitude!)));
                                                            setState(() {
                                                              story = '${itenary.places![index].dailyLog!} ${itenary.places![index].description!}';
                                                              isON = true;
                                                            });
                                                            // for (double i = 0; i <= 180; i += 17) {
                                                            //   await lgController.dispatchQuery(context,
                                                            //       'flytoview=${KmlHelper.orbitLookAtLinear(double.parse(itenary.places![index].latitude!), double.parse(itenary.places![index].longitude!), ConstantValues.tourZoomScale * 50, 0, i)}');
                                                            //   await Future.delayed(
                                                            //       const Duration(milliseconds: 1000));
                                                            // }
                                                            int rightRig = (int.parse(widget.settings.lgRigsNum!) / 2).floor() + 1;

                                                            await widget.lgController.dispatchSlaveKml(
                                                              context,
                                                              rightRig,
                                                              KmlHelper.screenOverlayImageWithStory(
                                                                image,
                                                                '${itenary.places![index].dailyLog!} ${itenary.places![index].description!}',
                                                                "${itenary.places![index].longitude}",
                                                                "${itenary.places![index].latitude}",
                                                                9 / 16,
                                                              ),
                                                            );
                                                            await Future.delayed(Duration(seconds: 6));
                                                            setState(() {
                                                              isON = false;
                                                            });
                                                          } catch (e) {
                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                              const SnackBar(
                                                                content: Text('Failed to dispatch KML query'),
                                                              ),
                                                            );
                                                          }
                                                        }
                                                            :
                                                            () {
                                                          print(_currentCenter.toString());
                                                          print("current center");
                                                          print("fhdkfhdkfhkd ");
                                                          print("${itenary.places![index].dailyLog!}");
                                                          setState(() {
                                                            story = '${itenary.places![index].dailyLog!} ${itenary.places![index].description!}';
                                                          });
                                                          _updateCenter(latLng.LatLng(double.parse(
                                                              itenary.places![index].latitude!),
                                                              double.parse(
                                                                  itenary.places![index].longitude!)));
                                                        },
                                                        child: GlassContainer(
                                                          borderRadius: BorderRadius.circular(100),
                                                          border: Border.all(width: 1.0, color: Color.fromRGBO(50, 50, 50, 1)),
                                                          width: 100,
                                                          height: 35,
                                                          child: Center(
                                                            child: Padding(
                                                              padding: const EdgeInsets.fromLTRB(15.0, 0, 15, 0),
                                                              child: Row(
                                                                children: [
                                                                  Text(
                                                                    "Fly To",
                                                                    style: TextStyle(
                                                                      fontWeight: FontWeight.bold,
                                                                      fontSize: 13,
                                                                      color: Colors.white,
                                                                    ),
                                                                  ),
                                                                  Spacer(),
                                                                  Transform.rotate(angle: 90 * 3.14 / 180,child: Icon(Icons.airplanemode_active, color: Colors.white,))
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      InkWell(
                                                        // onTap: () => Get.to(SeeMore(item: itenary.places![index],)),
                                                        onTap: (widget.sshController.client != null)
                                                            ? () async {
                                                          try {
                                                            setState(() {
                                                              isOrbit[index] = !isOrbit[index];
                                                            });
                                                            for(int i = 0; i < 361 && isOrbit[index]; i++)
                                                              await widget.lgController.dispatchQueryWO(
                                                                context,
                                                                // 'search=${itenary.places![index].name} ${itenary.places![index].location}'
                                                                'flytoview=${KmlHelper.orbitLookAtLinear(double.parse(itenary.places![index].latitude!), double.parse(itenary.places![index].longitude!),
                                                                    ConstantValues.tourZoomScale * 50, 45, double.parse('${i}'))}',
                                                              );
                                                            _updateCenter(latLng.LatLng(double.parse(itenary.places![index].latitude!), double.parse(itenary.places![index].longitude!)));
                                                            setState(() {
                                                              story = '${itenary.places![index].dailyLog!} ${itenary.places![index].description!}';
                                                            });
                                                            // for (double i = 0; i <= 180; i += 17) {
                                                            //   await lgController.dispatchQuery(context,
                                                            //       'flytoview=${KmlHelper.orbitLookAtLinear(double.parse(itenary.places![index].latitude!), double.parse(itenary.places![index].longitude!), ConstantValues.tourZoomScale * 50, 0, i)}');
                                                            //   await Future.delayed(
                                                            //       const Duration(milliseconds: 1000));
                                                            // }
                                                            int rightRig = (int.parse(widget.settings.lgRigsNum!) / 2).floor() + 1;
                                                            setState(() {
                                                              isON = false;
                                                              isOrbit[index] = false;
                                                            });
                                                          } catch (e) {
                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                              const SnackBar(
                                                                content: Text('Failed to dispatch KML query'),
                                                              ),
                                                            );
                                                          }
                                                        }
                                                            :
                                                            () {
                                                          print(_currentCenter.toString());
                                                          print("current center");
                                                          print("fhdkfhdkfhkd ");
                                                          print("${itenary.places![index].dailyLog!}");
                                                          setState(() {
                                                            story = '${itenary.places![index].dailyLog!} ${itenary.places![index].description!}';
                                                          });
                                                          _updateCenter(latLng.LatLng(double.parse(
                                                              itenary.places![index].latitude!),
                                                              double.parse(
                                                                  itenary.places![index].longitude!)));
                                                        },
                                                        child: GlassContainer(
                                                          borderRadius: BorderRadius.circular(100),
                                                          border: Border.all(width: 1.0, color: Color.fromRGBO(50, 50, 50, 1)),
                                                          width: 100,
                                                          height: 35,
                                                          child: Center(
                                                            child: Padding(
                                                              padding: const EdgeInsets.fromLTRB(15.0, 0, 15, 0),
                                                              child: Row(
                                                                children: [
                                                                  Text(
                                                                    "Orbit",
                                                                    style: TextStyle(
                                                                      fontWeight: FontWeight.bold,
                                                                      fontSize: 13,
                                                                      color: Colors.white,
                                                                    ),
                                                                  ),
                                                                  Spacer(),
                                                                  Transform.rotate(angle: 90 * 3.14 / 180,child: Icon(isOrbit[index] ? Icons.circle :  Icons.circle_outlined, color: Colors.white,))
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Spacer(),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),


                          ///Day line
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            child: Text(
                              'DAYWISE ITINEARY',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ).p(5),
                          ).p(10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                                height : MediaQuery.of(context).size.height*.40,
                                width: MediaQuery.of(context).size.width * .4,
                                //decoration: BoxDecoration(image:DecorationImage(image: AssetImage('lib/assets/DayWiseLine.png'), fit: BoxFit.cover)),
                                child: ListView.builder(itemCount:itenary.dayWiseItinerary!.length!,scrollDirection: Axis.horizontal,itemBuilder: (BuildContext,x){
                                  return  Column(
                                    children: [
                                      Container(
                                        height : MediaQuery.of(context).size.height*.08,
                                        width: MediaQuery.of(context).size.width*.16,
                                        decoration: BoxDecoration(image:DecorationImage(image: AssetImage('assets/images/DayLine.png'), fit: BoxFit.cover)),
                                      ),
                                      for(int m = 0; m < itenary.dayWiseItinerary![x].places!.length; m++)
                                        Text('|', style: TextStyle(color: Colors.white, fontSize: 6)),
                                      for(int m = 0; m < itenary.dayWiseItinerary![x].places!.length; m++)
                                        Text('|', style: TextStyle(color: Colors.white, fontSize: 6)),
                                      Container(
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        decoration: BoxDecoration(color: Color.fromRGBO(56, 58, 60, 1),
                                          borderRadius:
                                          BorderRadius.only(
                                              bottomRight: Radius.circular(20)
                                              ,
                                              topLeft:
                                              Radius.circular(
                                                  20)),
                                        ),
                                        width: MediaQuery.of(context).size.width*.15,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              itenary.dayWiseItinerary![x].day!,
                                              style: TextStyle(color: Colors.amber),
                                            ),
                                            for(var i = 0; i < itenary.dayWiseItinerary![x].places!.length; i++ )
                                              Text("* ${itenary.dayWiseItinerary![x].places![i]}", style: TextStyle(color: Colors.white,fontSize: 12))
                                          ],
                                        ).p(4),
                                      ).p(5),
                                    ],
                                  );
                                })
                            ),
                          ),

                          ///cost
                          Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            child: Text(
                              'ESTIMATED COSTS',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ).p(5),
                          ).p(10),
                          GlassContainer(
                              blur: .2,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.9,
                              child: Column(children: [
                                Row(children: [
                                  Text("Accomodation",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(color: Colors.white))),
                                  Spacer(),
                                  Text(itenary.estimatedCost!.accomodation.toString() + ' USD',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(color: Colors.white)))
                                ]).p(3),
                                Row(children: [
                                  Text("Activities",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(color: Colors.white))),
                                  Spacer(),
                                  Text(itenary.estimatedCost!.activities.toString() + ' USD',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(color: Colors.white)))
                                ]).p(3),
                                Row(children: [
                                  Text("Food",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(color: Colors.white))),
                                  Spacer(),
                                  Text(itenary.estimatedCost!.food.toString() + ' USD',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(color: Colors.white)))
                                ]).p(3),
                                Row(children: [
                                  Text("Travel",
                                      style: TextStyle(color: Colors.white)),
                                  Spacer(),
                                  Text(itenary.estimatedCost!.transport.toString() + ' USD', style: TextStyle(color: Colors.white))
                                ]).p(3),
                              ]).pOnly(left: 20, top: 10, bottom: 10, right: 20)),

                        ],
                      ),
                    ) : Container(
                      alignment: Alignment.center,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Gemini is loading the places please wait about 30s", style: TextStyle(color: Colors.white),),
                            ),
                            CircularProgressIndicator().centered(),
                          ],
                        ),
                      ),
                    )
                  ),
                )

                ],
              ),
            ),
          ),]
        ),
      ),
    );
  }
}
