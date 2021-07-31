import 'package:aya_test/controllers/home/home_page_controller.dart';
import 'package:aya_test/ui/discover_people/discover_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(HomePageController());
    return Scaffold(
      //Bottom appbar
      bottomNavigationBar: Obx(() => SizedBox(
            height: 100,
            child: BottomNavigationBar(
                enableFeedback: false,
                type: BottomNavigationBarType.fixed,
                currentIndex: _controller.currentTabIndex.value,
                onTap: (value) {
                  return _controller.currentTabIndex.value = value;
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Stack(
                      children: [
                        Stack(
                          children: [
                            SvgPicture.asset('assets/svg/menu_icon1.svg'),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFDB171E)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    activeIcon: Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/menu_icon1.svg',
                          color: Colors.black,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            '1',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFDB171E)),
                        ),
                      ],
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset('assets/svg/menu_icon2.svg'),
                      activeIcon: SvgPicture.asset(
                        'assets/svg/menu_icon2.svg',
                        color: Colors.black,
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset('assets/svg/menu_icon3.svg'),
                      activeIcon: SvgPicture.asset(
                        'assets/svg/menu_icon3.svg',
                        color: Colors.black,
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset('assets/svg/menu_icon4.svg'),
                      activeIcon: SvgPicture.asset(
                        'assets/svg/menu_icon4.svg',
                        color: Colors.black,
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset('assets/svg/menu_icon5.svg'),
                      activeIcon: SvgPicture.asset(
                        'assets/svg/menu_icon5.svg',
                        color: Colors.black,
                      ),
                      label: ''),
                ]),
          )),
      body: Obx(() => _getBodyWidget(_controller.currentTabIndex.value)),
    );
  }

//Build body base on tabbar index
  _getBodyWidget(int value) {
    switch (value) {
      case 0:
        return Center(
          child: Text('1'),
        );
      case 1:
        return Center(
          child: Text('2'),
        );
      case 2:
        return Center(
          child: Text('3'),
        );
      case 3:
        return Center(
          child: DiscoverPage(),
        );
      case 4:
        return Center(
          child: Text('5'),
        );

      default:
    }
  }
}
