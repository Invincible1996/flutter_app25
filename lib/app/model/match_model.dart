/// create by kevin
/// create at 2021-09-14
/// desc
///
class MatchModel {
  String? title;
  String? duration;
  List<Matchs>? matchs;

  MatchModel({this.title, this.duration, this.matchs});

  MatchModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    duration = json['duration'];
    if (json['matchs'] != null) {
      matchs = [];
      json['matchs'].forEach((v) {
        matchs!.add(Matchs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['duration'] = duration;
    if (matchs != null) {
      data['matchs'] = matchs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Matchs {
  String? date;
  String? week;
  List<DataList>? dataList;

  Matchs({this.date, this.week, this.dataList});

  Matchs.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    week = json['week'];
    if (json['list'] != null) {
      dataList = [];
      json['list'].forEach((v) {
        dataList?.add(DataList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['week'] = week;
    if (dataList != null) {
      data['dataList'] = dataList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataList {
  String? timeStart;
  String? status;
  String? statusText;
  String? team1;
  String? team2;
  String? team1Score;
  String? team2Score;

  DataList(
      {this.timeStart,
      this.status,
      this.statusText,
      this.team1,
      this.team2,
      this.team1Score,
      this.team2Score});

  DataList.fromJson(Map<String, dynamic> json) {
    timeStart = json['time_start'];
    status = json['status'];
    statusText = json['status_text'];
    team1 = json['team1'];
    team2 = json['team2'];
    team1Score = json['team1_score'];
    team2Score = json['team2_score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time_start'] = timeStart;
    data['status'] = status;
    data['status_text'] = statusText;
    data['team1'] = team1;
    data['team2'] = team2;
    data['team1_score'] = team1Score;
    data['team2_score'] = team2Score;
    return data;
  }
}
