/*
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../db/appdb.dart';
import '../api/enc_text.dart';


class CustomInterceptors extends Interceptor {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    debugPrint("REQUEST[${options.method}] => PATH: ${options.path}");
    debugPrint("Headers: ${jsonEncode(options.headers)}");
    debugPrint("data: ${jsonEncode(options.data)}");

    options.headers["content-type"] = "text/plain";
    options.headers["contentType"] = "text/plain";
    options.headers["responseType"] = "text/plain";
    options.headers["API-KEY"] = appDB.apiKey;
    options.headers["ACCEPT-LANGUAGE"] = "en";


*/
/*    options.headers.putIfAbsent("API-KEY", () => appDB.apiKey);
    options.headers.putIfAbsent("ACCEPT-LANGUAGE",()=>"en");*//*


    if (appDB.token.isNotEmpty) {
      options.headers['token'] = appDB.token;
    } else {
      options.headers['token'] = "";
    }

    debugPrint("Headers: ${jsonEncode(options.headers)}");

    options.data = enc.encrypt(jsonEncode(options.data));
    return handler.next(options);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    debugPrint('RESPONSE[${response.statusCode}] => PATH: ${response.realUri}');
    response.data = enc.decrypt(response.data);
    debugPrint('RESPONSE[${response.statusCode}] => PATH: ${response.data}');
    return handler.next(response);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    debugPrint(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    return handler.next(err);
  }
}
*/
