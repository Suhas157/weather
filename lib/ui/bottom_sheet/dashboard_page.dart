import 'dart:async';

import 'dart:io';
import 'package:demo_dec/core/db/appdb.dart';
import 'package:demo_dec/widget/common_bg_widget.dart';
import 'package:demo_dec/widget/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart' as GPS;
import 'package:permission_handler/permission_handler.dart';
import '../../api/add_location_weather.dart';
import '../../generated/l10n.dart';
import '../../res.dart';
import '../../values/colors.dart';
import '../../values/style.dart';
import '../store/login_store.dart';

class DashboardPage extends StatefulWidget {
  bool showLoading;
   DashboardPage({required this.showLoading,super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with WidgetsBindingObserver {
  Map<String, Map<String, double>> locationCoordinates = {
    'New York': {'latitude': 40.7128, 'longitude': -74.0060},
    'London': {'latitude': 51.5074, 'longitude': -0.1278},
    'Paris': {'latitude': 48.8566, 'longitude': 2.3522},
    'Tokyo': {'latitude': 35.6895, 'longitude': 139.6917},
  };
  String selectedLocation = "New York";
  int temperature = 0;
  String condition = "";
  int humidity = 0;
  String country = "";
  double windSpeed = 0.0;
  String icon = "";
  String city = "";
  final _focusNode = FocusNode();
  ValueNotifier<bool> showLoading = ValueNotifier<bool>(false);
  var _position;
  bool _shouldRequestPermission = false;
  bool _permissionGiven = true;
  Position? position;
  WeatherModel weatherModel = WeatherModel();

  @override
  void initState() {
    super.initState();
    if (authStore.weatherResponse == null||widget.showLoading==true) {
      showLoading.value = true;
    }
    WidgetsBinding.instance.addObserver(this);
    _focusNode.addListener(() {
      debugPrint("Has focus:........... ${_focusNode.hasFocus}");
    });

    checkLocationPermission();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: showLoading,
        builder: (BuildContext context, bool value, Widget? child) {
          return Loading(
            status: value,
            child: CommonBgWidget(
                body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    30.verticalSpace,
                    Text(
                      "Home Screen",
                      style: textBold.copyWith(
                          color: AppColor.white,
                          fontSize: 28.sp,
                          fontFamily: S.of(context).sfpro),
                    ),
                    20.verticalSpace,

                    Row(
                      children: [
                        Expanded(
                            child: DropdownButtonFormField<String>(
                          icon: const Icon(Icons.keyboard_arrow_down_rounded),
                          iconSize: 30.r,
                          iconDisabledColor: AppColor.primaryColorDark,
                          iconEnabledColor: AppColor.primaryColor,
                          hint: const Text('Select Location'),
                          dropdownColor: AppColor.osloGray,
                          decoration: InputDecoration(
                            fillColor: AppColor.white,
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15.r, vertical: 10.r),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.r),
                              borderSide: const BorderSide(
                                color: AppColor.white,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.r),
                              borderSide: const BorderSide(
                                color: AppColor.white,
                                width: 1,
                              ),
                            ),
                          ),
                          value: selectedLocation,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedLocation = newValue!;
                            });
                          },
                          items: locationCoordinates.keys
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )),
                        10.0.horizontalSpace,
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              showLoading.value = true;
                              // Get the coordinates for the selected location
                              double latitude = locationCoordinates[
                                  selectedLocation]!['latitude']!;
                              double longitude = locationCoordinates[
                                  selectedLocation]!['longitude']!;

                              // Call a function to fetch weather data for the selected location
                              getWeatherDataForLocation(latitude, longitude);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColor.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              elevation: 5.0,
                            ),
                            child: Text(
                              'Get Weather',
                              style: textBold.copyWith(color: AppColor.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Button to fetch weather data for the current device's location

                    40.verticalSpace,
                    Container(
                      width: double.infinity,
                      child: Card(
                        color: AppColor.transparent,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              10.verticalSpace,
                              if (authStore.weatherResponse?.name?.isEmpty ??
                                  true)
                                Container()
                              else
                                appDB.isCelsius
                                    ? getTempData("Temperature",
                                        "${authStore.weatherResponse!.main!.temp}°C")
                                    : getTempData("Temperature",
                                        "${double.parse("${(authStore.weatherResponse!.main!.temp!.toInt() * 1.8) + 32}").toStringAsFixed(4)}°F"),
                              10.0.verticalSpace,
                              if (authStore.weatherResponse?.name?.isEmpty ??
                                  true)
                                Container()
                              else
                                getTempData("condition",
                                    "${authStore.weatherResponse!.weather![0].description}"),
                              10.0.verticalSpace,
                              if (authStore.weatherResponse?.name?.isEmpty ??
                                  true)
                                Container()
                              else
                                getTempData("humidity",
                                    "${authStore.weatherResponse!.main!.humidity}"),
                              10.0.verticalSpace,
                              if (authStore.weatherResponse?.name?.isEmpty ??
                                  true)
                                Container()
                              else
                                getTempData("Country",
                                    "${authStore.weatherResponse!.sys!.country} "),
                              10.0.verticalSpace,
                              if (authStore.weatherResponse?.name?.isEmpty ??
                                  true)
                                Container()
                              else
                                getTempData("City",
                                    " ${authStore.weatherResponse!.name}"),
                              10.0.verticalSpace,
                              if (authStore.weatherResponse?.name?.isEmpty ??
                                  true)
                                Container()
                              else
                                appDB.isKm
                                    ? getTempData("WindSpeed",
                                        "${authStore.weatherResponse!.wind!.speed}  Km/h")
                                    : appDB.isMs
                                        ? getTempData("WindSpeed",
                                            "${((authStore.weatherResponse!.wind!.speed!.toDouble()) / 3.6).toStringAsExponential(3)}")
                                        : getTempData("WindSpeed",
                                            "${((authStore.weatherResponse!.wind!.speed!.toDouble()) / 1.60).toStringAsExponential(3)} mph"),
                              20.verticalSpace,
                            ],
                          ),
                        ),
                      ),
                    ),
                    20.verticalSpace,
                    if (authStore.weatherResponse?.name?.isEmpty ?? true)
                      Container()
                    else
                      Center(
                        child: IconButton(
                          splashColor: AppColor.primaryColor,
                          icon: Image.asset(
                            Res.refresh_btn,
                            width: 70,
                            height: 70,
                          ),
                          iconSize: 100,
                          onPressed: () {
                            showLoading.value = true;
                            debugPrint("btn");
                            setState(() {});
                            getLocationData();
                          },
                        ),
                      )
                  ],
                ),
              ),
            )),
          );
        });
  }

  Widget getTempData(String title, String name) {
    return Row(
      children: [
        Text(
          "${title} : ",
          style: textBold.copyWith(color: AppColor.white, fontSize: 18.sp),
        ),
        10.verticalSpace,
        Text(
          "${name}",
          overflow: TextOverflow.fade,
          style: textRegular.copyWith(color: AppColor.white, fontSize: 16.sp),
        ),
      ],
    );
  }

  Future<void> getWeatherDataForLocation(
      double latitude, double longitude) async {
    try {
      showLoading.value = true;
      await authStore.weather(latitude, longitude);
      debugPrint(
          "response.........${authStore.weatherResponse!.weather![0].description.toString()}");
      showLoading.value = false;
    } catch (error) {
      // Handle error, e.g., show an error message to the user
      debugPrint("Error fetching weather data: $error");
    }
  }

  Future<void> getPermission() async {
    showLoading.value = false;
    if (await _requestPermission()) {
      _position = await GPS.Geolocator.getCurrentPosition();
      _permissionGiven = true;
    } else {
      _permissionGiven = false;
    }
  }

  checkLocationPermission() async {
    if (Platform.isAndroid) {

      if (await Permission.location.request().isPermanentlyDenied) {
        debugPrint("showGpsSettingDialog");
        showLocationSettingDialog();
      } else if (!await Permission.location.request().isPermanentlyDenied) {
        debugPrint("isLogin...........");
        getPermission();
      } else {
        checkLocationPermission();
      }
    } else {
      var status = await Permission.location.request();
      if (status.isGranted) {
        getPermission();
      } else if (status.isDenied) {
        getPermission();
      } else if (status.isPermanentlyDenied) {
        showLocationSettingDialog();
      }
    }
  }

  Future<bool> _requestPermission() async {
    bool serviceEnabled;
    GPS.LocationPermission permission;
    serviceEnabled = await GPS.Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      showGPSSettingDialog();
      return false;
    }
    permission = await GPS.Geolocator.checkPermission();

    if (permission == GPS.LocationPermission.denied) {
      permission = await GPS.Geolocator.requestPermission();
      if (permission == GPS.LocationPermission.denied) {
        return false;
      }
    }

    if (permission == GPS.LocationPermission.deniedForever) {
      return false;
    }

    if (permission == GPS.LocationPermission.whileInUse) {
      if (authStore.weatherResponse == null) {
        getLocationData();
      }
    }
    if (permission == GPS.LocationPermission.always) {
      if (authStore.weatherResponse == null) {
        getLocationData();
      }
    }
    return true;
  }

  showLocationSettingDialog() {
    debugPrint("showGpsSettingDialog");
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () => Future.value(false),
          child: AlertDialog(
              title: Text(
                "Location Permission",
                textAlign: TextAlign.center,
                style: textBold.copyWith(fontSize: 18.sp, color: Colors.black),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "Please grant location permission in Device location Settings for additional functionality.",
                      maxLines: 3,
                      style: textRegular.copyWith(
                          fontSize: 15.sp, color: Colors.black),
                    ),
                  ),
                  10.0.verticalSpace,
                  Flexible(
                    child: Text(
                      'To enable this,click Device location Settings below and activate this feature under the Permissions menu',
                      maxLines: 3,
                      style: textRegular.copyWith(
                          fontSize: 15.sp, color: Colors.black),
                    ),
                  )
                ],
              ),
              actions: [
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.primaryColor, elevation: 0),
                      onPressed: () {
                        //Get.back();
                        getPermission();
                        Navigator.pop(context);
                        _shouldRequestPermission = true;
                        openAppSettings();
                        // AppSettings.openLocationSettings();
                      },
                      child: Text(
                        "Device location Settings",
                        style: textMedium.copyWith(
                            fontSize: 16.sp, color: Colors.white),
                      )),
                )
              ]),
        );
      },
    );
  }

  getLocationData() async {
    showLoading.value = true;
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    /* var weatherData = await weatherModel.getLocationWeather(
        , );*/

    await authStore.weather(position!.latitude, position!.longitude);
    print(
        "response.........${authStore.weatherResponse!.weather![0].description.toString()}");
    showLoading.value = false;
  }

  showGPSSettingDialog() {
    debugPrint("showGpsSettingDialog");
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () => Future.value(false),
          child: AlertDialog(
              title: Text(
                "Device's Location",
                textAlign: TextAlign.center,
                style: textBold.copyWith(fontSize: 18.sp, color: Colors.black),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "Please grant Device's location permission in Device location Settings for additional functionality.",
                      maxLines: 3,
                      style: textRegular.copyWith(
                          fontSize: 12.sp, color: Colors.black),
                    ),
                  ),
                  10.0.verticalSpace,
                  Flexible(
                    child: Text(
                      'To enable this,click Device location Settings below and activate this feature under the Permissions menu',
                      maxLines: 3,
                      style: textRegular.copyWith(
                          fontSize: 12.sp, color: Colors.black),
                    ),
                  )
                ],
              ),
              actions: [
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primaryColor, elevation: 0),
                    onPressed: () async {
                      bool serviceEnabled;

                      serviceEnabled =
                          await GPS.Geolocator.isLocationServiceEnabled();
                      if (!serviceEnabled) {
                        Navigator.pop(context);
                        _shouldRequestPermission = true;
                        GPS.Geolocator.openLocationSettings();
                      } else {
                        Navigator.pop(context);
                        getLocationData();
                      }
                      //Get.back();
                      // _requestPermission();

                      // AppSettings.openLocationSettings();
                    },
                    child: Text(
                      "Device location Settings",
                      style: textMedium.copyWith(
                          fontSize: 16.sp, color: Colors.white),
                    ),
                  ),
                )
              ]),
        );
      },
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      print("resumed");
      print("---------------------------------------------");
      if (_shouldRequestPermission) {
        _shouldRequestPermission = false;
        checkLocationPermission();
      }
    }
    super.didChangeAppLifecycleState(state);
  }
}
