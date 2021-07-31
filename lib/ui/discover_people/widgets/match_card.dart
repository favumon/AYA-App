import 'package:aya_test/models/match_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//Match info widget
class MatchCard extends StatelessWidget {
  final MatchInfo matchInfo;
  const MatchCard(this.matchInfo);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .22,
            decoration: BoxDecoration(
                color: matchInfo.color,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svg/avatar.svg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  matchInfo.lastActive,
                  style: TextStyle(color: Color(0xFF9A9A9A)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      matchInfo.name,
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset('assets/svg/warning.svg'),
                    Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        'New',
                        style: TextStyle(
                            color: Color(0xff04902B),
                            fontWeight: FontWeight.w600),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFFC4FFC2),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                      padding: EdgeInsets.zero,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${matchInfo.gender}, ${matchInfo.salutation}',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${matchInfo.age}, ${matchInfo.location}',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      child: Text(
                        matchInfo.answerMatch,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFFF295F4),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      child: Text(
                        matchInfo.match,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFFFCC9BA),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Bio\n\n',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: matchInfo.bio,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Education & Work\n\n',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: matchInfo.bio,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Physical Attributes\n\n',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: matchInfo.bio,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
