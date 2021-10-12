/// create by kevin
/// create at 2021-09-14
/// desc
import 'dart:convert';

import 'package:flutter_app25/app/model/http_response.dart';
import 'package:flutter_app25/app/model/match_model.dart';
import 'package:get/get_connect.dart';
import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
      methodCount: 0, // number of method calls to be displayed
      errorMethodCount: 8, // number of method calls if stacktrace is provided
      lineLength: 120, // width of the output
      colors: true, // Colorful log messages
      printEmojis: true, // Print an emoji for each log message
      printTime: false // Should each log print contain a timestamp
      ),
);

class MatchProvider extends GetConnect {
  /// author
  /// desc
  ///
  Future<List<Matchs>> getMatches() async {
    var response = await get(
        'http://apis.juhe.cn/fapig/football/query?type=yingchao&key=b147981e759fd82fe4c15c80072e4cd6');

    HttpResponse httpResponse =
        HttpResponse.fromJson(json.decode(response.bodyString!));

    MatchModel matchModel = MatchModel.fromJson(httpResponse.result);

    logger.v(matchModel.toJson());
    logger.v(matchModel.matchs?.first.dataList?.first.team2);

    return matchModel.matchs ?? [];
  }
}
