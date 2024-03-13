import 'dart:convert';
import 'package:demo_dec/values/style.dart';
import 'package:demo_dec/widget/common_bg_widget.dart';
import 'package:demo_dec/widget/loading_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../api/add_location_weather.dart';

import '../../core/db/appdb.dart';
import '../../generated/l10n.dart';
import '../../values/colors.dart';
import '../model/weather_forecast_response.dart';

class ForcastPage extends StatefulWidget {
  const ForcastPage({super.key});

  @override
  State<ForcastPage> createState() => _ForcastPageState();
}

class _ForcastPageState extends State<ForcastPage> {
  WeatherModel weatherModel = WeatherModel();
  Future<WeatherForecastResponse>? _weatherForecastResponse;
  List<dynamic>? sublistItem;
  ValueNotifier<bool> showLoading = ValueNotifier<bool>(true);

  // Function to fetch weather forecast data from API
  Future<WeatherForecastResponse> fetchWeatherForecast() async {
    showLoading.value = true;
    var long = 72.647781;
    var lat = 23.2156;
    const APIkey = 'e2182eb22bc917b1e20dfb8b8bc4263a';
    var url =
        'https://api.openweathermap.org/data/2.5/forecast/?lat=72.647781&lon=23.2156&appid=e2182eb22bc917b1e20dfb8b8bc4263a&units=metric';
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      showLoading.value = false;
      // If the server returns a OK response, then parse the JSON.
      print("...resp....${response.body}");
      return WeatherForecastResponse.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a OK response, then throw an exception.
      throw Exception('Failed to load weather forecast');
    }
  }

  @override
  void initState() {
    // getWeather();
    super.initState();
    _weatherForecastResponse = fetchWeatherForecast();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: showLoading,
      builder: (BuildContext context, bool value, Widget? child) {
        return Loading(
          status: value,
          child: CommonBgWidget(
            body: FutureBuilder<WeatherForecastResponse>(
              future: _weatherForecastResponse,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  debugPrint("list length ${snapshot.data!.list!.length}");
                  return SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        30.verticalSpace,
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Text(
                            "Forecast  Screen",
                            style: textBold.copyWith(
                              color: AppColor.white,
                              fontSize: 28.sp,
                              fontFamily: S.of(context).sfpro,
                            ),
                          ),
                        ),
                        20.verticalSpace,
                        Expanded( // Wrap the ListView.builder with Expanded
                          child: Padding(
                            padding:EdgeInsets.only(bottom: 67),
                            child: ListView.builder(
                              itemCount: 40,
                              shrinkWrap: true,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                // Get the daily weather info from the snapshot data
                                print("index is --- ${index}");
                                if (index == 0 ||
                                    index == 8 ||
                                    index == 16 ||
                                    index == 24 ||
                                    index == 32) {
                                  print(
                                      "every eight date ${snapshot.data!.list![index].dtTxt}");
                                  final dailyWeatherInfo =
                                  snapshot.data!.list![index];

                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                      vertical: 10.r,
                                      horizontal: 50.r,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.r),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        10.verticalSpace,
                                        Text(
                                          "${dailyWeatherInfo.dtTxt}",
                                          style: textRegular.copyWith(),
                                        ),
                                        10.verticalSpace,
                                        Image.network(
                                          'https://openweathermap.org/img/wn/${dailyWeatherInfo.weather![0].icon}.png',
                                        ),
                                        10.verticalSpace,
                                        Text(
                                          dailyWeatherInfo.weather![0].description!,
                                          style: textRegular.copyWith(
                                            fontSize: 12.sp,
                                            color: Colors.white.withOpacity(0.5),
                                          ),
                                        ),
                                        10.verticalSpace,
                                        Text(
                                          appDB.isCelsius
                                              ? 'Min: ${dailyWeatherInfo.main!.tempMin}°C, Max: ${dailyWeatherInfo.main!.tempMax}°C'
                                              : "Min: ${(dailyWeatherInfo.main!.tempMin!.toDouble() * 1.8) + 32}°F,Max: ${(dailyWeatherInfo.main!.tempMax!.toDouble() * 1.8) + 32}°C ",
                                          style: textRegular.copyWith(fontSize: 12.sp),
                                        ),
                                        20.verticalSpace,
                                      ],
                                    ),
                                  );
                                } else {
                                  return Container();
                                }
                              },
                            ),
                          ),
                        ),

                      ],
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                } else {
                  return Container();
                }
              },
            ),
          ),
        );
      },
    );
  }


  getWeather() async {
    showLoading.value = true;
    var WeatherForecastResponse =
        await weatherModel.getFiveDayLocationWeather(72.647781, 23.2156);
    showLoading.value = false;
    setState(() {
      print("weather data:${WeatherForecastResponse}");

      // condition = weatherData['weather'][0]['main'];
      // humidity = weatherData['main']['humidity'];
      // country = weatherData['sys']['country'];
      // city = weatherData['name'];
      // double temp = weatherData['main']['temp'];
      // windSpeed=weatherData['wind']['speed'];
      // temperature = temp.toInt();
    });
  }
}
