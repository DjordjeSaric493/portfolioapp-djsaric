import 'package:flutter/material.dart';

class MyCompetition {
  final String title;
  final String organization;
  final String date;
  final List<InlineSpan> bulletPoints;
  final String location;
  final Color color;

  MyCompetition({
    required this.color,
    required this.location,
    required this.title,
    required this.organization,
    required this.date,
    required this.bulletPoints,
  });
}
