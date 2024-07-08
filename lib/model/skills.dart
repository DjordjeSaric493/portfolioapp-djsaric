import 'package:flutter/material.dart';
import 'package:portfolioapp_test/model/emu_device_model.dart';

class SkillsModel {
  final String skillName;
  final Color colorS;
  CustomIconData? iconData;

  SkillsModel({
    required this.skillName,
    required this.colorS,
    this.iconData,
  });
}
