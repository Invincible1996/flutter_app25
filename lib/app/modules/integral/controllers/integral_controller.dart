import 'package:flutter_app25/app/widget/base_view.dart';
import 'package:get/get.dart';

class IntegralController extends GetxController {
  var pageState = PageState.busy.obs;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 1000), () {
      pageState.value = PageState.idle;
    }).catchError((err) {
      pageState.value = PageState.error;
    });
  }

  @override
  void onClose() {}
}
