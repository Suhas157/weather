import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitide;
  String apiKey = 'e2182eb22bc917b1e20dfb8b8bc4263a';
  late int status;

  /// async and await are used for time consuming tasks
  /// Get your current loatitude and longitude
  /// Location accuracy depends on the type of app high,low ,
  /// high accuracy also result in more power consumed
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      latitude = 23.2156;
      longitide =72.6369;
    } catch (e) {
      print(e);
    }
  }
}
