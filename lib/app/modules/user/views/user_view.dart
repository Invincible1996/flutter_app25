import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app25/app/routes/app_pages.dart';
import 'package:flutter_app25/app/style/custom_style.dart';
import 'package:get/get.dart';

class UserView extends StatefulWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: [
              Colors.cyanAccent,
              Colors.blueAccent,
              Colors.cyanAccent,
              Colors.blueAccent,
              Colors.cyanAccent,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              height: 180,
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    //头像半径
                    radius: 35,
                    //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
                    backgroundImage: NetworkImage(
                        'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            color: Colors.transparent, // 增加点击区域
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  '谁明浪子心',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Text('空山新雨后，天气晚来秋。'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 15,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              // width: Get.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.star_rounded,
                        color: CustomStyle.primaryColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('我的收藏'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.calendar_view_day_rounded,
                        color: CustomStyle.primaryColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('我的预约'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.email,
                        color: CustomStyle.primaryColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('我的消息'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.list,
                        color: CustomStyle.primaryColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('我的订单'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  UserListItem(
                    iconData: Icons.score,
                    title: '我的积分',
                    onTapItem: () {},
                  ),
                  UserListItem(
                    title: '我的地址',
                    iconData: Icons.local_activity,
                    onTapItem: () {
                      Get.toNamed(Routes.MY_ADDRESS);
                    },
                  ),
                  UserListItem(
                    title: '设置',
                    iconData: Icons.settings,
                    showBorder: false,
                    onTapItem: () {
                      Get.toNamed(Routes.SETTING);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class UserListItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final bool showBorder;
  final VoidCallback onTapItem;

  const UserListItem({
    Key? key,
    required this.title,
    required this.iconData,
    this.showBorder = true,
    required this.onTapItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapItem,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: !showBorder ? Colors.transparent : const Color(0XFFEEEEEE),
            ),
          ),
        ),
        child: Row(
          children: [
            Icon(
              iconData,
              color: CustomStyle.primaryColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
