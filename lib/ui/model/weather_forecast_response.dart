

import 'package:json_annotation/json_annotation.dart';

part 'weather_forecast_response.g.dart';

@JsonSerializable(explicitToJson: true)
class WeatherForecastResponse {
  @JsonKey(name: 'cod')
  String? cod;
  @JsonKey(name: 'message')
  int? message;
  @JsonKey(name: 'cnt')
  double? cnt;
  @JsonKey(name: 'list')
  List<SubList>? list;
  @JsonKey(name: 'city')
  City? city;

  WeatherForecastResponse({this.cod, this.message, this.cnt, this.list, this.city});

   factory WeatherForecastResponse.fromJson(Map<String, dynamic> json) => _$WeatherForecastResponseFromJson(json);

   Map<String, dynamic> toJson() => _$WeatherForecastResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubList {
  @JsonKey(name: 'dt')
  int? dt;
  @JsonKey(name: 'main')
  Main? main;
  @JsonKey(name: 'weather')
  List<Weather>? weather;
  @JsonKey(name: 'clouds')
  Clouds? clouds;
  @JsonKey(name: 'wind')
  Wind? wind;
  @JsonKey(name: 'visibility')
  double? visibility;
  @JsonKey(name: 'pop')
  double? pop;
  @JsonKey(name: 'snow')
  Snow? snow;
  @JsonKey(name: 'sys')
  Sys? sys;
  @JsonKey(name: 'dt_txt')
  String? dtTxt;

  SubList({this.dt, this.main, this.weather, this.clouds, this.wind, this.visibility, this.pop, this.snow, this.sys, this.dtTxt});

   factory SubList.fromJson(Map<String, dynamic> json) => _$SubListFromJson(json);

   Map<String, dynamic> toJson() => _$SubListToJson(this);
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
  double? pressure;
  @JsonKey(name: 'sea_level')
  double? seaLevel;
  @JsonKey(name: 'grnd_level')
  double? grndLevel;
  @JsonKey(name: 'humidity')
  double? humidity;
  @JsonKey(name: 'temp_kf')
  double? tempKf;

  Main({this.temp, this.feelsLike, this.tempMin, this.tempMax, this.pressure, this.seaLevel, this.grndLevel, this.humidity, this.tempKf});

   factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

   Map<String, dynamic> toJson() => _$MainToJson(this);
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
class Clouds {
  @JsonKey(name: 'all')
  double? all;

  Clouds({this.all});

   factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);

   Map<String, dynamic> toJson() => _$CloudsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Wind {
  @JsonKey(name: 'speed')
  double? speed;
  @JsonKey(name: 'deg')
  double? deg;
  @JsonKey(name: 'gust')
  double? gust;

  Wind({this.speed, this.deg, this.gust});

   factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);

   Map<String, dynamic> toJson() => _$WindToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Snow {
  @JsonKey(name: '3h')
  double? threeh;

  Snow({this.threeh});

   factory Snow.fromJson(Map<String, dynamic> json) => _$SnowFromJson(json);

   Map<String, dynamic> toJson() => _$SnowToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Sys {
  @JsonKey(name: 'pod')
  String? pod;

  Sys({this.pod});

   factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);

   Map<String, dynamic> toJson() => _$SysToJson(this);
}

@JsonSerializable(explicitToJson: true)
class City {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'coord')
  Coord? coord;
  @JsonKey(name: 'country')
  String? country;
  @JsonKey(name: 'population')
  double? population;
  @JsonKey(name: 'timezone')
  double? timezone;
  @JsonKey(name: 'sunrise')
  double? sunrise;
  @JsonKey(name: 'sunset')
  double? sunset;

  City({this.id, this.name, this.coord, this.country, this.population, this.timezone, this.sunrise, this.sunset});

   factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

   Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coord {
  @JsonKey(name: 'lat')
  double? lat;
  @JsonKey(name: 'lon')
  double? lon;

  Coord({this.lat, this.lon});

   factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);

   Map<String, dynamic> toJson() => _$CoordToJson(this);
}

