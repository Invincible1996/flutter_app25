import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app25/app/modules/home/views/home_view.dart';
import 'package:flutter_app25/app/modules/message/views/message_view.dart';
import 'package:flutter_app25/app/modules/shopping_cart/views/shopping_cart_view.dart';
import 'package:flutter_app25/app/modules/user/views/user_view.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;
  PageController controller = PageController();
  List<Widget> pageList = [];

  @override
  void initState() {
    super.initState();
    pageList = [
      const HomeView(),
      const MessageView(),
      const ShoppingCartView(),
      const UserView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('MainView'),
      //   centerTitle: false,
      // ),
      body: Column(
        children: [
          Platform.isMacOS || Platform.isMacOS || Platform.isWindows
              ? WindowTitleBarBox(child: MoveWindow())
              : const SizedBox.shrink(),
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemBuilder: (_, index) => pageList[index],
              itemCount: pageList.length,
              physics: const NeverScrollableScrollPhysics(),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          _currentIndex = index;
          controller.jumpToPage(index);
          setState(() {});
        },
        items: [
          const BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          const BottomNavigationBarItem(
            label: 'Message',
            icon: Icon(Icons.email),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 4, right: 4),
                  child: Icon(Icons.shopping_cart),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 15,
                    height: 15,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: const Text(
                      '1',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const BottomNavigationBarItem(
            label: 'User',
            icon: Icon(
              Icons.person_pin,
            ),
          )
        ],
      ),
    );
  }
}
