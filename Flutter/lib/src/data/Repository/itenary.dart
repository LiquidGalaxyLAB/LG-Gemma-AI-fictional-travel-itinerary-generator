//toh repository ka kam kya hota h
//basically ye api see data leke model me dal deta h
//toh repository me api--> data--> model --> to be used in the application
import 'dart:convert';
import 'dart:core';
import 'dart:developer';
import 'package:liquid_galaxy_rig/src/data/model/itenaryModel.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import '../../core/api.dart';
import '../model/DayWiseModel.dart';

class ItenaryRepo {
  final Api _api = Api();

  Future<Data> FetchIten(String query, String days) async {
    log("hrllo");
    var form = FormData.fromMap({'queryPlace': query, 'queryDays': days});
    final Map<String, String> body = {'queryPlace': query, 'queryDays': days};
    Response response = await _api.sendRequest.post(
      '/query',
      data: form,
    );
    log("dljkfhiosudhfiouksdhidsk");
    ApiResponse apiResponse = ApiResponse.fromResponse(response);
    log("jsdhaiksujgdjkhsagjhasgjshag");
    var item = Data.fromJson(apiResponse.data);
    log("khjsdgciusdgfiusdtyfgiusetfiudsgtfiusdgfiusdgfsdujfgsdkjhfgdsf\n\n\n\n");
    log(item.places![1].imageLink.toString() + "print hoja");
    print(item.places![1].imageLink.toString() + "print hoja");
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
