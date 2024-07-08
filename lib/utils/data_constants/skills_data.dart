import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolioapp_test/model/emu_device_model.dart';
import 'package:portfolioapp_test/model/skills.dart';

List<SkillsModel> skills = [
  SkillsModel(
    skillName: "Flutter",
    colorS: Colors.blue,
    iconData: CustomIconData(flutterIcon: Icons.flutter_dash),
  ),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.yellow,
    iconData: CustomIconData(
      fontAwesomeIcon: FontAwesomeIcons.fire,
    ),
  ),
  SkillsModel(
    skillName: "Github",
    colorS: Colors.yellow,
    iconData: CustomIconData(
      fontAwesomeIcon: FontAwesomeIcons.github,
    ),
  ),
  SkillsModel(
    skillName: "Dart",
    colorS: Colors.blue,
    iconData: CustomIconData(flutterIcon: Icons.code),
  ),
  SkillsModel(
    skillName: "Kotlin-basic",
    colorS: Colors.blue,
    iconData: CustomIconData(fontAwesomeIcon: FontAwesomeIcons.android),
  ),
  SkillsModel(
    skillName: "Java",
    colorS: Colors.blue,
    iconData: CustomIconData(fontAwesomeIcon: FontAwesomeIcons.java),
  ),
  SkillsModel(
    skillName: "Provider",
    colorS: Colors.orange,
    iconData: CustomIconData(flutterIcon: Icons.layers),
  ),
  SkillsModel(
    skillName: "Riverpod",
    colorS: Colors.blue,
    iconData: CustomIconData(flutterIcon: Icons.water_damage),
  ),
  SkillsModel(
    skillName: "CI/CD-Bitrise",
    colorS: Colors.yellow,
    iconData: CustomIconData(flutterIcon: Icons.settings),
  ),
  SkillsModel(
    skillName: "Android-basics",
    colorS: const Color.fromARGB(255, 0, 255, 0),
    iconData: CustomIconData(
      fontAwesomeIcon: FontAwesomeIcons.android,
    ),
  ),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.yellow,
    iconData: CustomIconData(
      fontAwesomeIcon: FontAwesomeIcons.fire,
    ),
  ),
  SkillsModel(
    skillName: "Supabase",
    colorS: Colors.lightGreenAccent,
    iconData: CustomIconData(
      fontAwesomeIcon: FontAwesomeIcons.database,
    ),
  ),
  SkillsModel(
    skillName: "REST API",
    colorS: Colors.yellow,
    iconData: CustomIconData(
      fontAwesomeIcon: FontAwesomeIcons.code,
    ),
  ),
  SkillsModel(
    skillName: "Project Management",
    colorS: Colors.blue,
    iconData: CustomIconData(fontAwesomeIcon: FontAwesomeIcons.table),
  ),
];

List<SkillsModel> languages = [
  SkillsModel(skillName: "English", colorS: Colors.orange),
  SkillsModel(skillName: "Russian", colorS: Colors.black),
  SkillsModel(skillName: "Serbian", colorS: Colors.blueGrey),
];
