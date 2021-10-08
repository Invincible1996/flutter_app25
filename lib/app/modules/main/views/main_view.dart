import 'package:flutter/material.dart';
import 'package:flutter_app25/app/modules/home/views/home_view.dart';
import 'package:flutter_app25/app/modules/message/views/message_view.dart';
import 'package:flutter_app25/app/modules/user/views/user_view.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;
  PageController controller = PageController();
  List<Widget> pageList = [
    const HomeView(),
    const MessageView(),
    const UserView(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('MainView'),
      //   centerTitle: false,
      // ),
      body: PageView.builder(
        controller: controller,
        itemBuilder: (_, index) => pageList[index],
        itemCount: pageList.length,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          _currentIndex = index;
          controller.jumpToPage(index);
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Message',
            icon: Icon(Icons.email),
          ),
          BottomNavigationBarItem(
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
