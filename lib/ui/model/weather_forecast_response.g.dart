// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherForecastResponse _$WeatherForecastResponseFromJson(
        Map<String, dynamic> json) =>
    WeatherForecastResponse(
      cod: json['cod'] as String?,
      message: json['message'] as int?,
      cnt: (json['cnt'] as num?)?.toDouble(),
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => SubList.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherForecastResponseToJson(
        WeatherForecastResponse instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list?.map((e) => e.toJson()).toList(),
      'city': instance.city?.toJson(),
    };

SubList _$SubListFromJson(Map<String, dynamic> json) => SubList(
      dt: json['dt'] as int?,
      main: json['main'] == null
          ? null
          : Main.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      clouds: json['clouds'] == null
          ? null
          : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num?)?.toDouble(),
      pop: (json['pop'] as num?)?.toDouble(),
      snow: json['snow'] == null
          ? null
          : Snow.fromJson(json['snow'] as Map<String, dynamic>),
      sys: json['sys'] == null
          ? null
          : Sys.fromJson(json['sys'] as Map<String, dynamic>),
      dtTxt: json['dt_txt'] as String?,
    );

Map<String, dynamic> _$SubListToJson(SubList instance) => <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main?.toJson(),
      'weather': instance.weather?.map((e) => e.toJson()).toList(),
      'clouds': instance.clouds?.toJson(),
      'wind': instance.wind?.toJson(),
      'visibility': instance.visibility,
      'pop': instance.pop,
      'snow': instance.snow?.toJson(),
      'sys': instance.sys?.toJson(),
      'dt_txt': instance.dtTxt,
    };

Main _$MainFromJson(Map<String, dynamic> json) => Main(
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      tempMin: (json['temp_min'] as num?)?.toDouble(),
      tempMax: (json['temp_max'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toDouble(),
      seaLevel: (json['sea_level'] as num?)?.toDouble(),
      grndLevel: (json['grnd_level'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      tempKf: (json['temp_kf'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'sea_level': instance.seaLevel,
      'grnd_level': instance.grndLevel,
      'humidity': instance.humidity,
      'temp_kf': instance.tempKf,
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      id: json['id'] as int?,
      main: json['main'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

Clouds _$CloudsFromJson(Map<String, dynamic> json) => Clouds(
      all: (json['all'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CloudsToJson(Clouds instance) => <String, dynamic>{
      'all': instance.all,
    };

Wind _$WindFromJson(Map<String, dynamic> json) => Wind(
      speed: (json['speed'] as num?)?.toDouble(),
      deg: (json['deg'] as num?)?.toDouble(),
      gust: (json['gust'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WindToJson(Wind instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };

Snow _$SnowFromJson(Map<String, dynamic> json) => Snow(
      threeh: (json['3h'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SnowToJson(Snow instance) => <String, dynamic>{
      '3h': instance.threeh,
    };

Sys _$SysFromJson(Map<String, dynamic> json) => Sys(
      pod: json['pod'] as String?,
    );

Map<String, dynamic> _$SysToJson(Sys instance) => <String, dynamic>{
      'pod': instance.pod,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: json['id'] as int?,
      name: json['name'] as String?,
      coord: json['coord'] == null
          ? null
          : Coord.fromJson(json['coord'] as Map<String, dynamic>),
      country: json['country'] as String?,
      population: (json['population'] as num?)?.toDouble(),
      timezone: (json['timezone'] as num?)?.toDouble(),
      sunrise: (json['sunrise'] as num?)?.toDouble(),
      sunset: (json['sunset'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coord': instance.coord?.toJson(),
      'country': instance.country,
      'population': instance.population,
      'timezone': instance.timezone,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

Coord _$CoordFromJson(Map<String, dynamic> json) => Coord(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CoordToJson(Coord instance) => <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };
