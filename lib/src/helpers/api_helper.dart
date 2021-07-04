

import 'package:dio/dio.dart';

class ApiHelper {
  static Dio dio;
  ApiHelper() {
    dio = Dio();
  }

  static Future<Response> makeGetRequest(url, headers) async {
    String mainUrl = url+"&appid=f8700c11477fe265bdccb12ffe89b026";
    print("Url Used: $mainUrl");
    return await Dio().get(mainUrl, options: Options(
    )).then((value) => value);
  }

  static Future<Response> makePostRequest(url, data, headers) async {
    return await dio.post(url, data: data, options: Options(
      headers: headers,
    )).then((value) => value);
  }
}