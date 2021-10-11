/// @create at 9/13/21 14:40
/// @create by kevin
/// @desc
///
///
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app25/app/widget/base_view.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with AutomaticKeepAliveClientMixin {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print('HomeView build');
    return Scaffold(
      appBar: GFAppBar(
        leading: GFIconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
          type: GFButtonType.transparent,
          shape: GFIconButtonShape.standard,
        ),
        title: const Text("Home Page"),
        actions: <Widget>[
          GFIconButton(
            icon: const Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () {},
            type: GFButtonType.transparent,
          ),
        ],
      ),
      body: Obx(
        () => BaseView(
          child: ListView.builder(
            itemCount: controller.list.length,
            itemBuilder: (_, index) => Container(
              // height: 150,
              margin: EdgeInsets.only(
                top: 10,
                left: 15,
                right: 15,
                bottom: index == 9 ? 10 : 0,
              ),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 0), // Shadow position
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${controller.list[index].date}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          // color: Colors.white,
                        ),
                      ),
                      Text(
                        '${controller.list[index].week}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          // color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    children: controller.list[index].dataList!
                        .map((e) => SizedBox(
                              height: 40,
                              width: Get.width - 50,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(child: Text(e.timeStart!)),
                                  Expanded(
                                    child: Text(
                                      e.team1!,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                  const Expanded(child: Text(' VS ')),
                                  Expanded(
                                    child: Text(
                                      e.team2!,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                  Expanded(child: Text(e.statusText!)),
                                ],
                              ),
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
          ),
          pageState: controller.pageState.value,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
