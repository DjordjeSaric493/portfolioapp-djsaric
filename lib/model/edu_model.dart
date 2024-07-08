import 'package:flutter/material.dart';

class MyEdu {
  final String title;
  final String school;
  final String startDate;
  final String endDate;
  final List<InlineSpan> bulletPoints;
  final String location;
  final Color color;

  MyEdu({
    required this.title,
    required this.school,
    required this.startDate,
    required this.endDate,
    required this.bulletPoints,
    required this.location,
    required this.color,
  });
}
