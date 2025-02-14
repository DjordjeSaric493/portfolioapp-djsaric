//logic: on every device user press an icon to open another instance of diff DeviceFrame
//TODO: go to homepage.dart, click on DeviceFrame, see what final variables can be used
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:portfolioapp_test/utils/data_constants/emu_device_data.dart';

class EmuDeviceModel {
  DeviceInfo device; //emulated device we are using
  CustomIconData data; //icon to click and open on diff device
  //now put these as required
  EmuDeviceModel({required this.data, required this.device});
}

class CustomIconData {
  final IconData? flutterIcon;
  final IconData? fontAwesomeIcon;

  CustomIconData({this.flutterIcon, this.fontAwesomeIcon});
}
