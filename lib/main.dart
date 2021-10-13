/// @create at 9/13/21 14:39
/// @create by kevin
/// @desc
///
///
import 'package:flutter/material.dart';
import 'package:flutter_app25/app/style/custom_style.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      defaultTransition: Transition.cupertino,
      theme: ThemeData(
        primarySwatch: CustomStyle.primaryColor,
        highlightColor: const Color.fromRGBO(0, 0, 0, 0),
        splashColor: const Color.fromRGBO(0, 0, 0, 0),
      ),
    ),
  );
}
