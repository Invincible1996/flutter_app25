/// @create at 9/13/21 14:39
/// @create by kevin
/// @desc
///
///import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/style/custom_style.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
  //   // Size windowSize = await WindowManager.instance.getSize();
  //   // await WindowManager.instance.setSize(const Size(800, 800));
  //   //
  //   // WindowManager.instance.setAlwaysOnTop(false);
  //
  //   doWhenWindowReady(() {
  //     const initialSize = Size(800, 800);
  //     appWindow.minSize = initialSize;
  //     appWindow.size = initialSize;
  //     appWindow.alignment = Alignment.center;
  //     appWindow.show();
  //   });
  // }
  runApp(GetMaterialApp(
    title: "Application",
    debugShowCheckedModeBanner: false,
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
    defaultTransition: Transition.cupertino,
    theme: ThemeData(
      primarySwatch: CustomStyle.primaryColor,
      // highlightColor: const Color.fromRGBO(0, 0, 0, 0),
      // splashColor: const Color.fromRGBO(0, 0, 0, 0),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      defaultTransition: Transition.cupertino,
      theme: ThemeData(
        primarySwatch: CustomStyle.primaryColor,
        // highlightColor: const Color.fromRGBO(0, 0, 0, 0),
        // splashColor: const Color.fromRGBO(0, 0, 0, 0),
      ),
    );
  }
}
