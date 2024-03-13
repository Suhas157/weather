import 'package:flutter/cupertino.dart';

import 'get_api_data.dart';
import 'get_location.dart';
import 'package:http/http.dart' as http;

  const weatherApiUrl = 'https://api.openweathermap.org/data/2.5/weather';
const fiveDayWeatherApiUrl = 'https://api.openweathermap.org/data/2.5/forecast';

class WeatherModel {
  Future<dynamic> getLocationWeather(long, lat) async {
    /// await for methods that return future
    Location location = Location();
    await location.getCurrentLocation();
    const apiKey = 'e2182eb22bc917b1e20dfb8b8bc4263a';

    /// Get location data
    ///&units=metric change the temperature metric
    NetworkData networkHelper = NetworkData(
        '$weatherApiUrl?lat=${lat}&lon=${long}&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getFiveDayLocationWeather(long, lat) async {
    /// await for methods that return future
    Location location = Location();
    await location.getCurrentLocation();
    const apiKey = 'e2182eb22bc917b1e20dfb8b8bc4263a';

    /// Get location data
    ///&units=metric change the temperature metric
    NetworkData networkHelper = NetworkData(
        '$fiveDayWeatherApiUrl?lat=${lat}&lon=${long}&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  static  Future<String?> fetchUrl(Uri uri, {Map<String, String>? headers}) async {
    try {
      final response = await http.get(uri, headers: headers);
      {
        if (response.statusCode == 200) {
          print("fetchUrl response ${response.body}");
          return response.body;
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
