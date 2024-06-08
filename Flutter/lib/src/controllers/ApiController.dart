//toh repository ka kam kya hota h
//basically ye api see data leke model me dal deta h
//toh repository me api--> data--> model --> to be used in the application
import 'dart:convert';
import 'dart:core';
import 'dart:developer';
import 'package:liquid_galaxy_rig/src/data/model/itenaryModel.dart';
import 'package:dio/dio.dart';

import '../core/api.dart';
import '../data/model/DayWiseModel.dart';

class ItenaryRepo {

  final Api _api = Api();

  Future <Data> FetchIten(String query, String days) async {


    Response response = await _api.sendRequest.post(
      '/query',
      data: {'queryPlace': query, 'queryDays': days},

    );
    log("dljkfhiosudhfiouksdhidsk");
    ApiResponse apiResponse = ApiResponse.fromResponse(response);
    log("jsdhaiksujgdjkhsagjhasgjshag");
    var item =  Data.fromJson(apiResponse.data);
    log("khjsdgciusdgfiusdtyfgiusetfiudsgtfiusdgfiusdgfsdujfgsdkjhfgdsf\n\n\n\n");
    log(item.places![1].imageLink.toString()+"print hoja");
    return item;
  }
  ///day wise
  Future <DayWiseModel> DayWise(String query) async {
    log("entereed");

    Response response = await _api.sendRequest.post(
      '/dayWiseQuery',
      data: {'query': query},

    );
    log("seent rqst");

    ApiResponse apiResponse = ApiResponse.fromResponse(response);
    log("parseed reesponse");
    var item =  DayWiseModel.fromJson(apiResponse.data);
    log("itemm");
    log(item.items![0]!.name! );
    return item;
  }


}