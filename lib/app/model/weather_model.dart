/// create by kevin
/// create at 2021-09-23
/// desc  data model
///
class WeatherModel {
  String? city;
  Realtime? realtime;
  List<Future>? future;
  WeatherModel({
    this.city,
    this.realtime,
    this.future,
  });

  WeatherModel.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    realtime =
        json['realtime'] != null ? Realtime.fromJson(json['realtime']) : null;
    if (json['future'] != null) {
      future = <Future>[];
      json['future'].forEach((v) {
        future?.add(Future.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['city'] = city;
    if (realtime != null) {
      data['realtime'] = realtime?.toJson();
    }
    return data;
  }
}

class Future {
  String? date;
  String? temperature;
  String? weather;
  Wid? wid;
  String? direct;
  Future({
    this.date,
    this.temperature,
    this.weather,
    this.wid,
    this.direct,
  });
  Future.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    temperature = json['temperature'];
    weather = json['weather'];
    wid = json['wid'] != null ? Wid.fromJson(json['wid']) : null;
    direct = json['direct'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['temperature'] = temperature;
    data['weather'] = weather;
    if (wid != null) {
      data['wid'] = wid?.toJson();
    }
    data['direct'] = direct;
    return data;
  }
}

class Wid {
  String? day;
  String? night;
  Wid({
    this.day,
    this.night,
  });
  Wid.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    night = json['night'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['day'] = day;
    data['night'] = night;
    return data;
  }
}

class Realtime {
  String? temperature;
  String? humidity;
  String? info;
  String? wid;
  String? direct;
  String? power;
  String? aqi;
  Realtime({
    this.temperature,
    this.humidity,
    this.info,
    this.wid,
    this.direct,
    this.power,
    this.aqi,
  });
  Realtime.fromJson(Map<String, dynamic> json) {
    temperature = json['temperature'];
    humidity = json['humidity'];
    info = json['info'];
    wid = json['wid'];
    direct = json['direct'];
    power = json['power'];
    aqi = json['aqi'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['temperature'] = temperature;
    data['humidity'] = humidity;
    data['info'] = info;
    data['wid'] = wid;
    data['direct'] = direct;
    data['power'] = power;
    data['aqi'] = aqi;
    return data;
  }
}
