import 'package:flutter_app25/app/modules/adress_detail/bindings/address_detail_binding.dart';
import 'package:flutter_app25/app/modules/adress_detail/views/address_detail_view.dart';
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
import 'package:flutter_app25/app/modules/shopping_cart/bindings/shopping_cart_binding.dart';
import 'package:flutter_app25/app/modules/shopping_cart/views/shopping_cart_view.dart';
import 'package:flutter_app25/app/modules/user/bindings/user_binding.dart';
import 'package:flutter_app25/app/modules/user/views/user_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.USER,
      page: () => const UserView(),
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
      page: () => const MyAddressView(),
      binding: MyAddressBinding(),
    ),
    GetPage(
      name: _Paths.ADRESS_DETAIL,
      page: () => const AddressDetailView(),
      binding: AddressDetailBinding(),
    ),
    GetPage(
      name: _Paths.INTEGRAL,
      page: () => const IntegralView(),
      binding: IntegralBinding(),
    ),
    GetPage(
      name: _Paths.ORDER,
      page: () => const OrderView(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: _Paths.SHOPPING_CART,
      page: () => ShoppingCartView(),
      binding: ShoppingCartBinding(),
    ),
  ];
}
