import 'package:flutter/material.dart';

class SportsEvents {
  String date;
  String eventimage;
  String eventName;
  String address;
  String centerName;
  String organizerName;
  String time;
  String eventdetails;
  bool bookmark;

  SportsEvents(
      {required this.date,
      required this.eventimage,
      required this.eventName,
      required this.address,
      required this.centerName,
      required this.organizerName,
      required this.time,
      required this.eventdetails,
      required this.bookmark});
}
