import 'package:hive/hive.dart';

import '../locator.dart';



class AppDB {
  static const _appDbBox = '_appDbBox';
  static const fcmKey = 'fcm_key';
  static const platform = 'platform';
  final Box<dynamic> _box;

  AppDB._(this._box);

  static Future<AppDB> getInstance() async {
    final box = await Hive.openBox<dynamic>(_appDbBox);
    return AppDB._(box);
  }

  T getValue<T>(key, {T? defaultValue}) =>
      _box.get(key, defaultValue: defaultValue) as T;

  Future<void> setValue<T>(key, T value) => _box.put(key, value);

  bool get firstTime => getValue("firstTime", defaultValue: false);

  set firstTime(bool update) => setValue("firstTime", update);

  bool get isLogin => getValue("isLogin", defaultValue: false);

  set isLogin(bool update) => setValue("isLogin", update);

  String get token => getValue("token", defaultValue: "");

  set token(String update) => setValue("token", update);

  String get fcmToken => getValue("fcm_token", defaultValue: "0");

  set fcmToken(String update) => setValue("fcm_token", update);

  int get cartCount => getValue("cart_count", defaultValue: 0);

  set cartCount(int update) => setValue("cart_count", update);

  String get apiKey => getValue("apiKey",
      defaultValue: "ckKirWlycfUYoQcksQV3btr0fjYl7mXXCnzEpOltmuI");

  set apiKey(String update) => setValue("apiKey", update);


  String get faculty => getValue("faculty", defaultValue: "");

  set faculty(String update) => setValue("faculty", update);

  String get course => getValue("course", defaultValue: "");

  set course(String update) => setValue("course", update);


  int get courseIndex => getValue("courseIndex", defaultValue: 0);

  set courseIndex(int update) => setValue("courseIndex", update);

  String get semester => getValue("semester", defaultValue: "");

  set semester(String update) => setValue("semester", update);

  bool get isStoreSelected => getValue("isStoreSelected", defaultValue: false);

  set isStoreSelected(bool update) => setValue("isStoreSelected", update);
  bool get isCelsius  => getValue("isCelsius", defaultValue: false);

  set isCelsius(bool update) => setValue("isCelsius", update);
  bool get isMs  => getValue("isMs", defaultValue: true);

  set isMs(bool update) => setValue("isMs", update);
  bool get isKm  => getValue("isKm", defaultValue: true);

  set isKm(bool update) => setValue("isKm", update);

  bool get isMph  => getValue("isMph", defaultValue: false);

  set isMph(bool update) => setValue("isMph", update);

  logout() {
    token = "";
    isLogin = false;
    firstTime = true;
  }
}

final appDB = locator<AppDB>();
