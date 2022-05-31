import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_vinhhang/data/models/login_request_model.dart';
import 'package:http/http.dart' as http;

import '../../config.dart';

class APIService {
  static var client = http.Client();

  static Future<bool> login(
    LoginRequestModel model,
  ) async {
    try {
      if (kDebugMode) {
        await Future.delayed(Duration(seconds: 1));
      }
      Map<String, String> requestHeaders = {
        'Content-Type': 'application/json',
      };

      var url = Uri.http(
        Config.apiURL,
        Config.loginAPI,
      );

      var response = await client.post(
        url,
        headers: requestHeaders,
        body: jsonEncode(model.toJson()),
      );
      if (response.statusCode == 200 || response.statusCode == 400) {
        print("reponse status: ${response.body}");
        print("reponse status: ${response.statusCode}");
        // await SharedService.setLoginDetails(
        //   loginResponseJson(
        //     response.body,
        //   ),
        // );
        return true;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print(e.toString());
    }
    return false;
  }

  // static Future<RegisterResponseModel> register(
  //   RegisterRequestModel model,
  // ) async {
  //   Map<String, String> requestHeaders = {
  //     'Content-Type': 'application/json',
  //   };

  //   var url = Uri.http(
  //     Config.apiURL,
  //     Config.registerAPI,
  //   );

  //   var response = await client.post(
  //     url,
  //     headers: requestHeaders,
  //     body: jsonEncode(model.toJson()),
  //   );

  //   return registerResponseJson(
  //     response.body,
  //   );
  // }

}
