import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';


const String BASE_URL = "http://192.168.1.103:8110";
// const String BASE_URL = "http://192.168.73.62:5000";
// const String BASE_URL = "http://192.168.201.1:5000";
const Map<String, dynamic> DEFAULT_HEADERS = {
  'content-type': 'application/json'
};
//sk_3ec0205ad6c06070cd6d93ae888d07631df5188cf609989b//GENTTS API Key
class Api {
  final Dio _dio = Dio();
  void changebaseurl(String base) {
    _dio.options.baseUrl = base;
    print(_dio.options.baseUrl);
    print("_dio.options.baseUrl");
    print(base);
  }
  Api() {
    _dio.options.baseUrl = BASE_URL;
    _dio.options.headers = DEFAULT_HEADERS;

    _dio.interceptors.add(PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true));
  }

  Dio get sendRequest => _dio;
}
class AApi {
  final Dio _dio = Dio();
  void changebaseurl(String base) {
    _dio.options.baseUrl = base;
    print(_dio.options.baseUrl);
    print("_dio.options.baseUrl");
    print(base);
  }
  AApi(String base) {
    _dio.options.baseUrl = base;
    _dio.options.headers = DEFAULT_HEADERS;

    _dio.interceptors.add(PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true));
  }

  Dio get sendRequest => _dio;
}
class ApiResponse {
  String status;
  dynamic data;
  dynamic items;

  ApiResponse({required this.status, this.data, this.items});

  factory ApiResponse.fromResponse(Response res) {
    final data = res.data;
    final items = res.data;
    return ApiResponse(
        status: data["status"], data: data["data"], items: data["items"]);
  }
}
