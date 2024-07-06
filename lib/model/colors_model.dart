import 'dart:ui';
import 'package:flutter/material.dart';

class ColorsModel {
  Gradient gradient;
  Color color;
  String svgImgPath;

  ColorsModel({
    required this.color,
    required this.gradient,
    required this.svgImgPath,
  });
}
