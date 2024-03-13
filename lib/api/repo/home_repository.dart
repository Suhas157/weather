import 'package:demo_dec/ui/model/weather_response.dart';
import '../../core/locator.dart';
import '../api_end_points.dart';
import '../api_keys.default.dart';
import '../response/api_base/api_base.dart';
import 'package:demo_dec/core/di/api/http_client.dart';

abstract class IUserHomeRepository {
  Future<WeatherResponse> getWeather(lat, long);
}

class UserHomeRepository extends IUserHomeRepository {
/*  @override
  Future<ListResponse<SyllabusResponse>> getSyllabus() async {
    final response = await client.post(
        APIEndPoints.getSyllabus
    );
    final finalData = ListResponse<SyllabusResponse>.fromJson(response,
        create: SyllabusResponse.fromJson);
    return finalData;
  }*/

  @override
  Future<WeatherResponse> getWeather(lat, long) async {
    final response = await client.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${long}&appid=e2182eb22bc917b1e20dfb8b8bc4263a&units=metric');
    final finalData = WeatherResponse.fromJson(response);
    return finalData;
  }
}

final client = locator<HttpClient>();
final homeRepo = locator<UserHomeRepository>();
