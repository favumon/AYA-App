import 'package:aya_test/models/match_info.dart';
import 'package:aya_test/ui/discover_people/widgets/swipe_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiscoverPageController extends GetxController {
  //For handling swipe
  CardController cardController = CardController();

//Maches to list
  final matches = [
    MatchInfo(
        age: '28 yrs',
        answerMatch: '2 same answers',
        bio: 'Share your story with everyone',
        educationAndWork: 'Share your story with everyone',
        physicalAttributes: 'Share your story with everyone',
        gender: 'Female',
        match: '3rd',
        location: 'Lucknow',
        name: 'Helge Thorneley',
        salutation: 'She/Her',
        lastActive: 'Last Active: 10 January 2021',
        color: Colors.amber),
    MatchInfo(
        age: '36 yrs',
        answerMatch: '7 same answers',
        bio: 'Share your story with everyone',
        educationAndWork: 'Share your story with everyone',
        physicalAttributes: 'Share your story with everyone',
        gender: 'Male',
        match: '2nd',
        location: 'Kerala',
        name: 'John',
        salutation: 'He/His',
        lastActive: 'Last Active: 12 September 2020',
        color: Colors.blueGrey),
    MatchInfo(
        age: '43 yrs',
        answerMatch: '2 same answers',
        bio: 'Share your story with everyone',
        educationAndWork: 'Share your story with everyone',
        physicalAttributes: 'Share your story with everyone',
        gender: 'Female',
        match: '5th',
        location: 'Agra',
        name: 'Jolly',
        salutation: 'She/Her',
        lastActive: 'Last Active: 15 August 2021',
        color: Colors.lightBlue),
  ].obs;

  final cardsSwiped =
      0.obs; //total count of swipeed cards, for handling action icon visibility

  void onRemoveMatch() {
    cardController.triggerLeft();
  }

  void onMessageMatch() {}

  void onLikeMatch() {
    cardController.triggerRight();
  }

  @override
  void onClose() {
    cardController.removeListener();
    super.onClose();
  }
}
