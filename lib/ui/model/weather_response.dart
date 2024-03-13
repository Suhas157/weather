import 'package:json_annotation/json_annotation.dart'; 

part 'weather_response.g.dart';

@JsonSerializable(explicitToJson: true)
class WeatherResponse {
  @JsonKey(name: 'coord')
  Coord? coord;
  @JsonKey(name: 'weather')
  List<Weather>? weather;
  @JsonKey(name: 'base')
  String? base;
  @JsonKey(name: 'main')
  Main? main;
  @JsonKey(name: 'visibility')
  int? visibility;
  @JsonKey(name: 'wind')
  Wind? wind;
  @JsonKey(name: 'clouds')
  Clouds? clouds;
  @JsonKey(name: 'dt')
  int? dt;
  @JsonKey(name: 'sys')
  Sys? sys;
  @JsonKey(name: 'timezone')
  int? timezone;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'cod')
  int? cod;

  WeatherResponse({this.coord, this.weather, this.base, this.main, this.visibility, this.wind, this.clouds, this.dt, this.sys, this.timezone, this.id, this.name, this.cod});

   factory WeatherResponse.fromJson(Map<String, dynamic> json) => _$WeatherResponseFromJson(json);

   Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coord {
  @JsonKey(name: 'lon')
  double? lon;
  @JsonKey(name: 'lat')
  double? lat;

  Coord({this.lon, this.lat});

   factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);

   Map<String, dynamic> toJson() => _$CoordToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Weather {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'main')
  String? main;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'icon')
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

   factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

   Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Main {
  @JsonKey(name: 'temp')
  double? temp;
  @JsonKey(name: 'feels_like')
  double? feelsLike;
  @JsonKey(name: 'temp_min')
  double? tempMin;
  @JsonKey(name: 'temp_max')
  double? tempMax;
  @JsonKey(name: 'pressure')
  int? pressure;
  @JsonKey(name: 'humidity')
  int? humidity;

  Main({this.temp, this.feelsLike, this.tempMin, this.tempMax, this.pressure, this.humidity});

   factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

   Map<String, dynamic> toJson() => _$MainToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Wind {
  @JsonKey(name: 'speed')
  double? speed;
  @JsonKey(name: 'deg')
  int? deg;

  Wind({this.speed, this.deg});

   factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);

   Map<String, dynamic> toJson() => _$WindToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Clouds {
  @JsonKey(name: 'all')
  int? all;

  Clouds({this.all});

   factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);

   Map<String, dynamic> toJson() => _$CloudsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Sys {
  @JsonKey(name: 'type')
  int? type;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'country')
  String? country;
  @JsonKey(name: 'sunrise')
  int? sunrise;
  @JsonKey(name: 'sunset')
  int? sunset;

  Sys({this.type, this.id, this.country, this.sunrise, this.sunset});

   factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);

   Map<String, dynamic> toJson() => _$SysToJson(this);
}

