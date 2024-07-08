import 'package:flutter/material.dart';

class MyExperience {
  final String title;
  final String company;
  final String startDate;
  final String endDate;
  final List<String> bulletPoints;
  final String location;
  final Color color;
  MyExperience({
    required this.color,
    required this.location,
    required this.title,
    required this.company,
    required this.startDate,
    required this.endDate,
    required this.bulletPoints,
  });
}
