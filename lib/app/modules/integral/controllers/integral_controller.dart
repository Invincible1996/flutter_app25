import 'dart:async';

import 'package:flutter_app25/app/widget/base_view.dart';
import 'package:get/get.dart';

class IntegralController extends GetxController {
  var pageState = PageState.busy.obs;
  final _controller = StreamController<int>.broadcast();
  var _count = 1;

  @override
  void onInit() {
    super.onInit();

    // 模拟数据加载
    Future.delayed(const Duration(milliseconds: 1000), () {
      pageState.value = PageState.idle;
    }).catchError((err) {
      pageState.value = PageState.error;
    });

    // Stream periodicStream = Stream.periodic(const Duration(seconds: 1), (num) {
    //   return num;
    // }).map((event) => event * 2);
    // periodicStream.listen((event) {
    //   print(event);
    // });

    // createStream();
    // Future.delayed(const Duration(seconds: 1), () {
    //   _controller.stream.listen((event) {
    //     print("多订阅流$event");
    //   });
    //   if (_count > 50) {
    //     _controller.close();
    //   }
    // });
    // Future.delayed(const Duration(seconds: 1), () {
    //   _controller.stream.listen((event) {
    //     print("多订阅流二$event");
    //   });
    //   if (_count > 50) {
    //     _controller.close();
    //   }
    // });
  }

  createStream() {
    Timer.periodic(const Duration(seconds: 1), (t) {
      _controller.sink.add(_count);
      _count++;
    });
  }

  @override
  void onClose() {}
}
