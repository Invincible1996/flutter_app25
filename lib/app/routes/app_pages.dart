import 'package:get/get.dart';

import 'package:flutter_app25/app/modules/adress_detail/bindings/adress_detail_binding.dart';
import 'package:flutter_app25/app/modules/adress_detail/views/adress_detail_view.dart';
import 'package:flutter_app25/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_app25/app/modules/home/views/home_view.dart';
import 'package:flutter_app25/app/modules/integral/bindings/integral_binding.dart';
import 'package:flutter_app25/app/modules/integral/views/integral_view.dart';
import 'package:flutter_app25/app/modules/main/bindings/main_binding.dart';
import 'package:flutter_app25/app/modules/main/views/main_view.dart';
import 'package:flutter_app25/app/modules/message/bindings/message_binding.dart';
import 'package:flutter_app25/app/modules/message/views/message_view.dart';
import 'package:flutter_app25/app/modules/my_address/bindings/my_address_binding.dart';
import 'package:flutter_app25/app/modules/my_address/views/my_address_view.dart';
import 'package:flutter_app25/app/modules/order/bindings/order_binding.dart';
import 'package:flutter_app25/app/modules/order/views/order_view.dart';
import 'package:flutter_app25/app/modules/setting/bindings/setting_binding.dart';
import 'package:flutter_app25/app/modules/setting/views/setting_view.dart';
import 'package:flutter_app25/app/modules/user/bindings/user_binding.dart';
import 'package:flutter_app25/app/modules/user/views/user_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.USER,
      page: () => UserView(),
      binding: UserBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGE,
      page: () => const MessageView(),
      binding: MessageBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => const SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.MY_ADDRESS,
      page: () => MyAddressView(),
      binding: MyAddressBinding(),
    ),
    GetPage(
      name: _Paths.ADRESS_DETAIL,
      page: () => AdressDetailView(),
      binding: AdressDetailBinding(),
    ),
    GetPage(
      name: _Paths.INTEGRAL,
      page: () => IntegralView(),
      binding: IntegralBinding(),
    ),
    GetPage(
      name: _Paths.ORDER,
      page: () => OrderView(),
      binding: OrderBinding(),
    ),
  ];
}
