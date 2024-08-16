//toh repository ka kam kya hota h
//basically ye api see data leke model me dal deta h
//toh repository me api--> data--> model --> to be used in the application
import 'dart:convert';
import 'dart:core';
import 'dart:developer';
import 'package:liquid_galaxy_rig/src/data/model/itenaryModel.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/api.dart';
import '../model/DayWiseModel.dart';
import 'package:http/http.dart' as http;
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:geocoding/geocoding.dart';


class ItenaryRepo {
  final Api _api = Api();

  Future<Data> FetchIten(String query, int days) async {
    final SharedPreferences warningPrefs = await SharedPreferences.getInstance();
    String jack = await warningPrefs.getString('AIServer') ?? '';
    log("hrllo");

    final AApi __api = AApi(jack);
    var form = FormData.fromMap({'queryPlace': query, 'queryDays': days});
    final Map<String, dynamic> body = {'queryPlace': query, 'queryDays': days};
    Response response = await __api.sendRequest.post(
      '/query',
      data: form,
    );

    log("dljkfhiosudhfiouksdhidsk");
    ApiResponse apiResponse = ApiResponse.fromResponse(response);
    log("jsdhaiksujgdjkhsagjhasgjshag");
    log(apiResponse.data.toString() + "apiresponse");
    var item = Data.fromJson(apiResponse.data);
    log("khjsdgciusdgfiusdtyfgiusetfiudsgtfiusdgfiusdgfsdujfgsdkjhfgdsf\n\n\n\n");
    log(item.places![1].imageLink.toString() + "print hoja");
    print(item.places![1].imageLink.toString() + "print hoja");
    print(item.places!.length.toString() + " places in total");
    return item;
  }
  Future<Data> FetchItemAI(String query, int days) async {
    final SharedPreferences warningPrefs = await SharedPreferences.getInstance();
    String jack = await warningPrefs.getString('AIServer') ?? '';
    int personality = await warningPrefs.getInt('personality') ?? 2;
    int tourismInterest = await warningPrefs.getInt('tourismInterest') ?? 2;
    int natureVsCity = await warningPrefs.getInt('natureVsCity') ?? 2;
    int adventureRelaxation = await warningPrefs.getInt('adventureRelaxation') ?? 2;
    int foodie = await warningPrefs.getInt('foodie') ?? 1;
    log("hrllo");

    final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      apiKey: jack,
    );

    final prompt = '''
    you are an expert travel planner. Generate a${adventureRelaxation == 0 ? 'adventurous' : ''}${personality == 0 ? ' extrovert' : personality == 0 ? ' introvert' : ''} fictional traveler's log in the form of a list of travel destinations for a trip to ${query}, with a total of ${days} places.you can include clubs${tourismInterest== 1 ? '': ', historical places' } , bars, forts, ${natureVsCity== 1 ? '': 'nature,' }, ${foodie== 1 ? '': 'restaurants,' } hidden gems, also some other famous places like museums etc, . Each destination should include the following details: name, description, locationName, longitude, latitude, attraction, image_link,totalTravelTimeInHours, VisitTime, estimatedFoodCost, dailyLog, estimatedTravelCost, estimatedStayCost, and childrenAllowed. Also make an array of Strings called experiences, an array of string called hotels, an array of strings called transport, a string called totalTravelTime, an object with key estimatedCost which contains values accomodation, activities, food, transport. Also include an array of objects with 2 fields first string day eg Day 1m second place names that divides places according to the number of days . The response should be in UTF-8 JSON format, all places enclosed in the 'places' field of the JSON to be returned without any extra comments or quote wrappers.
    
    example response:
{
  "places": places[],
  "totalTravelTime" : "String" (in hours),
  "hotels" : ["String"],
  "experiences" : ["String"],
  "transport" : ["String"],
  "dayWiseItinerary" : dayWiseItinerary[],
  "estimatedCost" : {
  "accomodation" : "String" (in USD),
  "activities" : "String" (in USD),
  "food": "String" (in USD),
  "transport": "String" (in USD),
  }
  
  json format for 1 places JSON object:
 {
  "name" : "String",
  "image_link" : "String" (fake short links like www.example.com),
  "locationName" : "String",
  "latitude": "String",
  "longitude" : "String",
  "dailyLog" : "String" (detailed log from the perspective of a traveller that visited and spent quality time at that place),
  "description" : "String",
  "childrenAllowed" : "String",
  "VisitTime" : "String",
  "attraction" : "String",
 }
 
   json format for 1 dayWiseItinerary JSON object:
    {
    "day" : "String" (eg Day 1),
    "places" ["String"] (number of places will be divided with at least 2 places a day and only the name of the place is put here) ,
    }
}
    
    ''';
    final content = [Content.text(prompt)];
    final response = await model.generateContent(content);
    print(response.text);
    final jacky = await response.text ?? '';
    print("fjkdfjkd");
    final js = await jsonDecode(jacky.replaceAll('```json', '').replaceAll('```',''));
    print(js.toString());
    log("dljkfhiosudhfiouksdhidsk");
    // ApiResponse apiResponse = ApiResponse.fromResponse(response);
    log("jsdhaiksujgdjkhsagjhasgjshag");
    // log(apiResponse.data.toString() + "apiresponse");
     var item = Data.fromJson(js);
     int totalPlaces = item.places!.length;
     for(int i = 0; i < totalPlaces; i++)
       {
         try {
           String name = await '${item.places![i].name} ${item.places![i].location}';
           List<Location> locations = await locationFromAddress(name);
           item.places![i].longitude = '${locations[0].longitude}';
           item.places![i].latitude = '${locations[0].latitude}';
         }
         catch (e) {
           print(e);
           print("error in location ${i}");
         }
       }
     print("dddddd");

    print("locations[0].latitude.toString()");
    log("khjsdgciusdgfiusdtyfgiusetfiudsgtfiusdgfiusdgfsdujfgsdkjhfgdsf\n\n\n\n");
     log(item.places![1].imageLink.toString() + "print hoja");
     print(item.places![1].imageLink.toString() + "print hoja");
     print(item.places!.length.toString() + " places in total");
     return item;
  }
  Future<Data> fetchItem(String query, String days) async {
    log("helloff");
    final Uri uri = Uri.parse('http://10.0.2.2:5000/query');
    final Map<String, String> body = {'queryPlace': query, 'queryDays': days};

    final response = await http.post(
      uri,
      body: body,
    );

    if (response.statusCode == 200) {
      log("Response received");
      final dynamic responseData = jsonDecode(response.body);
      ApiResponse apiResponse = ApiResponse.fromResponse(responseData);
      log("Response data processed");
      var item = Data.fromJson(apiResponse.data);
      log("Data parsed");
      log(item.places![1].imageLink.toString() + "print hoja");
      return item;
    } else {
      log("Request failed with status: ${response.statusCode}");
      print("Hello");
      throw Exception('Failed to load data');
    }
  }

  ///day wise
  Future<DayWiseModel> DayWise(String query) async {
    log("entereed");

    Response response = await _api.sendRequest.post(
      '/dayWiseQuery',
      data: {'query': query},
    );
    log("seent rqst");

    ApiResponse apiResponse = ApiResponse.fromResponse(response);
    log("parseed reesponse");
    var item = DayWiseModel.fromJson(apiResponse.data);
    log("itemm");
    log(item.items![0]!.name!);
    return item;
  }
}
