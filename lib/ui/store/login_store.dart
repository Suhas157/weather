
import 'dart:convert';

import 'package:demo_dec/ui/model/weather_response.dart';
import 'package:flutter/material.dart';

import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import '../../../core/di/api/app_exceptions.dart';
import '../../api/repo/home_repository.dart';
import '../../api/response/api_base/api_base.dart';
import '../../core/locator.dart';
import 'package:demo_dec/core/di/api/http_client.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {

  @observable
  WeatherResponse? weatherResponse;


  @observable
  String? errorMessage;



  @action
  Future weather(lat,long) async {
    try {
      errorMessage = null;
      var commonStoreFuture =
      ObservableFuture<WeatherResponse>(
          homeRepo.getWeather(lat, long));
      weatherResponse = await commonStoreFuture;
      print(".......resp ${weatherResponse}");
    } on AppException catch (e) {
      debugPrint("AppException..... $e");
      errorMessage = e.toString();
    } catch (e, st) {
      debugPrint("onCatch.....");
      debugPrint(e.toString());
      debugPrint(st.toString());
      errorMessage = "Something went wrong";
    }
  }


/*  @action
  Future syllabus() async {
    try {
      errorMessage = null;
      var commonStoreFuture =
      ObservableFuture<List<dynamic>>(
          homeRepo.getSyllabus() as Future<List>);
      var response = await commonStoreFuture;
      print("response is $response");
      if (true *//*this.pageToken == 0*//*) {
        syllabusResponseList.clear();
      }
      syllabusResponseList.addAll(response as List<SyllabusResponse>);

    } on AppException catch (e) {
      debugPrint("AppException..... $e");
      errorMessage = e.toString();
    } catch (e, st) {
      debugPrint("onCatch.....");
      debugPrint(e.toString());
      debugPrint(st.toString());
      errorMessage = "Something went wrong";
    }
  }*/


}

final authStore = locator<LoginStore>();
