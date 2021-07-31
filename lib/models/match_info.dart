import 'package:flutter/material.dart';

//Single match info model
class MatchInfo {
  final String name;
  final String gender;
  final String salutation;
  final String age;
  final String location;
  final String answerMatch;
  final String match;
  final String bio;
  final String educationAndWork;
  final String physicalAttributes;
  final String lastActive;
  final Color color;

  MatchInfo(
      {this.name,
      this.gender,
      this.salutation,
      this.age,
      this.location,
      this.answerMatch,
      this.match,
      this.bio,
      this.educationAndWork,
      this.physicalAttributes,
      this.lastActive,
      this.color});
}
