import 'package:flutter/material.dart';
import 'package:portfolioapp_test/model/emu_device_model.dart';

class AppsModel {
  String title; //"app" title
  Color color; //obv
  String? assetPath; //path to img asset or icon from CustomIcon class
  CustomIconData? iconData;
  Widget?
      screen; //screen that is our "app" ->press on about me icon and launch aboutmescreen.dart
  String?
      link; //i may want it to open link to external page (less work on screens)

  AppsModel(
      {required this.title, //note connection between ? and required
      required this.color,
      this.assetPath,
      this.iconData,
      this.screen,
      this.link})
      : assert(iconData == null ||
            assetPath == null); //can provide only iconData or assetPath
}
