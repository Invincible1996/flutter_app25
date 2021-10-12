import 'package:flutter_app25/app/model/match_model.dart';
import 'package:flutter_app25/app/modules/home/provider/match_provider.dart';
import 'package:flutter_app25/app/widget/base_view.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<Matchs> list = <Matchs>[].obs;
  var pageState = PageState.idle.obs;

  @override
  void onReady() {
    super.onReady();
    pageState.value = PageState.busy;
    MatchProvider().getMatches().then((res) {
      list.assignAll(res);

      pageState.value = PageState.idle;
    }).catchError((err) {
      pageState.value = PageState.error;
    });
  }

  @override
  void onClose() {}
}
