import 'package:flutter/material.dart';

import '../mine/mine.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  int currentIndex = 1;
  late PageController pageController;
  var currentPage = 0;
  var itemType = BottomNavigationBarType.values;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: PageView(
          controller: pageController,
          physics: const PageScrollPhysics(),
          onPageChanged: (page) {
            setState(() => currentIndex = page);
          },
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.green.shade50,
              child: const Text(
                "地图",
                style: TextStyle(color: Colors.black, fontSize: 60),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.grey.shade200,
              child: const Text("社区",
                  style: TextStyle(color: Colors.black, fontSize: 60)),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.redAccent,
              child: const Text("爱车",
                  style: TextStyle(color: Colors.black, fontSize: 60)),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.blueAccent,
              child: const Text("商店",
                  style: TextStyle(color: Colors.black, fontSize: 60)),
            ),
            MineFragment()

          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
              pageController.animateToPage(
                value,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            });
          },
          currentIndex: currentIndex,
          backgroundColor: Colors.black,
          fixedColor: Colors.blue,
          unselectedItemColor: Colors.red,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.map), label: "地图"),
            BottomNavigationBarItem(icon: Icon(Icons.article), label: "社区"),
            BottomNavigationBarItem(icon: Icon(Icons.car_crash), label: "爱车"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "商店"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "我"),
          ],
        ));
  }
}
