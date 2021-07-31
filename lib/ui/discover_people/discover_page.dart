import 'package:aya_test/controllers/discover/discover_page_controller.dart';
import 'package:aya_test/ui/discover_people/widgets/match_card.dart';
import 'package:aya_test/ui/discover_people/widgets/swipe_card.dart';
import 'package:aya_test/ui/shared_widgets/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage();

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(DiscoverPageController());
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        //Appbar widgets
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 40,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Discover',
                  style: Theme.of(context).textTheme.headline5,
                ),
                IconButton(
                    onPressed: () {},
                    icon: RotatedBox(
                        quarterTurns: 3,
                        child: Icon(
                          Icons.arrow_back_ios,
                        ))),
                Spacer(),
                Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/settings.svg',
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Stack(
            children: [
              Obx(() => SwipeCard(
                    swipeCompleteCallback: (orientation, index) {
                      _controller.cardsSwiped.value++;
                    },
                    totalNum: _controller.matches.length,
                    swipeEdge: 8.0,
                    allowVerticalMovement: false,
                    maxWidth: MediaQuery.of(context).size.width * 0.9,
                    maxHeight: MediaQuery.of(context).size.height,
                    minWidth: MediaQuery.of(context).size.width * 0.8,
                    minHeight: MediaQuery.of(context).size.height * 0.9,
                    cardBuilder: (context, index) =>
                        MatchCard(_controller.matches[index]),
                    cardController: _controller.cardController,
                  )),
            ],
          ),
        )),
        SizedBox(
          height: 20,
        ),
        //Should hide action icons once mach becomes empty
        Obx(() => Visibility(
              visible: !(_controller.cardsSwiped.value >=
                  _controller.matches.length),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomIconButton(
                    iconNormal: 'assets/svg/remove_match_normal.svg',
                    iconPressed: 'assets/svg/remove_match_pressed.svg',
                    onTapped: _controller.onRemoveMatch,
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomIconButton(
                        iconNormal: 'assets/svg/message_match_normal.svg',
                        iconPressed: 'assets/svg/message_match_pressed.svg',
                        onTapped: _controller.onMessageMatch,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        child: Text(
                          '4 left',
                          style: TextStyle(
                              color: Color(0xFFF50057),
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFFF8CEE0),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                  CustomIconButton(
                    iconNormal: 'assets/svg/like_match_normal.svg',
                    iconPressed: 'assets/svg/like_match_pressed.svg',
                    onTapped: _controller.onLikeMatch,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
