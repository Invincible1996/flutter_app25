import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MessageView extends StatefulWidget {
  const MessageView({Key? key}) : super(key: key);

  @override
  _MessageViewState createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Message'),
      // ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Column(
              children: [
                GFCarousel(
                  autoPlay: true,
                  pagerSize: 10,
                  activeIndicator: Colors.white,
                  pagination: true,
                  viewportFraction: 1.0,
                  items: imageList.map(
                    (url) {
                      return Image.network(url, fit: BoxFit.cover, width: 2000.0);
                    },
                  ).toList(),
                  onPageChanged: (index) {
                    setState(() {
                      index;
                    });
                  },
                ),
              ],
            ),
            Positioned(
                child: SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 35,
                      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.search,
                            size: 18,
                          ),
                          Expanded(
                            child: Text('请输入要查询的内容'),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.email,
                    size: 18,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(
                    Icons.notifications,
                    size: 18,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
