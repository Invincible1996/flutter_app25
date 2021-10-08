import 'package:flutter/material.dart';
import 'package:flutter_app25/app/model/match_model.dart';
import 'package:flutter_app25/app/modules/home/provider/match_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<Matchs> list = <Matchs>[].obs;

  @override
  void onInit() {
    super.onInit();
    debugPrint('564456654');
  }

  @override
  void onReady() {
    super.onReady();
    MatchProvider().getMatches().then((res) {
      list.assignAll(res);
    });
  }

  @override
  void onClose() {}
}
