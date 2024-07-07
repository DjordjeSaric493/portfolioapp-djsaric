import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolioapp_test/model/apps_model.dart';
import 'package:portfolioapp_test/model/emu_device_model.dart';

List<AppsModel> apps = [
  AppsModel(
      title: "About me",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: Icons.person_2_outlined)),
  AppsModel(
      title: "MySkills",
      color: Colors.white70,
      iconData:
          CustomIconData(fontAwesomeIcon: FontAwesomeIcons.connectdevelop)),
  AppsModel(
      title: "Education",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: FontAwesomeIcons.bookOpen)),
  AppsModel(
      title: "Github",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: FontAwesomeIcons.github)),
  AppsModel(
      title: "LinkedIn",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: FontAwesomeIcons.linkedinIn)),
  AppsModel(
      title: "Mail",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: Icons.mail_outline_rounded)),
  AppsModel(
      title: "Media",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: Icons.newspaper_outlined)),
  AppsModel(
      title: "APP1",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: FontAwesomeIcons.android)),
  AppsModel(
      title: "APP2",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: FontAwesomeIcons.android)),
  AppsModel(
      title: "APP3",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: FontAwesomeIcons.android)),
];
