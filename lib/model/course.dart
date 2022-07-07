import 'package:flutter/material.dart';

class Course {
  List<String> type;
  String name;
  String image;
  String duration;
  int modul;
  Color color;
  String desc1;
  String desc2;
  String desc3;
  String desc4;
  String desc5;
  String desc6;
  String desc7;
  String subpokok1;
  String subpokok2;
  String subpokok3;
  String subpokok4;

  Course(
      {required this.color,
      required this.duration,
      required this.image,
      required this.modul,
      required this.name,
      required this.type,
      required this.desc1,
      required this.desc2,
      required this.desc3,
      required this.desc4,
      required this.desc5,
      required this.desc6,
      required this.desc7,
      required this.subpokok1,
      required this.subpokok2,
      required this.subpokok3,
      required this.subpokok4});
}
