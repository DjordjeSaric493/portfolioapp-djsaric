import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolioapp_test/model/apps_model.dart';
import 'package:portfolioapp_test/model/emu_device_model.dart';
import 'package:portfolioapp_test/ui/mini_phone_apps/about_app/about.dart';
import 'package:portfolioapp_test/ui/mini_phone_apps/competitions/competitions.dart';
import 'package:portfolioapp_test/ui/mini_phone_apps/education/edu.dart';
import 'package:portfolioapp_test/ui/mini_phone_apps/email/email_me.dart';
import 'package:portfolioapp_test/ui/mini_phone_apps/experience/experience.dart';
import 'package:portfolioapp_test/ui/mini_phone_apps/pong.dart';
import 'package:portfolioapp_test/ui/mini_phone_apps/skills/skills.dart';

List<AppsModel> apps = [
  AppsModel(
      title: "About me",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: Icons.person_2_outlined),
      screen: AboutMe()),
  AppsModel(
      title: "MySkills",
      color: Colors.white70,
      iconData:
          CustomIconData(fontAwesomeIcon: FontAwesomeIcons.connectdevelop),
      screen: const Skills()),
  AppsModel(
      title: "Education",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: FontAwesomeIcons.bookOpen),
      screen: const Education()),
  AppsModel(
      title: "Experience",
      color: Colors.white70,
      iconData: CustomIconData(fontAwesomeIcon: FontAwesomeIcons.idBadge),
      screen: const Experience()),
  AppsModel(
      title: "Competitions",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: FontAwesomeIcons.trophy),
      screen: Competitions()),
  AppsModel(
      title: "Github",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: FontAwesomeIcons.github),
      link: githublink),
  AppsModel(
      title: "LinkedIn",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: FontAwesomeIcons.linkedinIn),
      link: linkedin),
  AppsModel(
      title: "Mail",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: Icons.mail_outline_rounded),
      screen: EmailMePage()),
  AppsModel(
      title: "Pong",
      color: Colors.white70,
      iconData: CustomIconData(flutterIcon: Icons.gamepad_outlined),
      screen: PongGame()),
];

const String linkedin = "https://www.linkedin.com/in/djordjesaric493/";
const String resumelink = "";
const String githublink = "https://github.com/DjordjeSaric493";
const String email = 'djordjesaric1999@gmail.com';
String introText =
    'Welcome to my portfolio web app.\nI am an aspiring Flutter developer and a computer science student.\nMy interests are cross-platform development and mobile apps.';
