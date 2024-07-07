import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolioapp_test/model/colors_model.dart';
import 'package:portfolioapp_test/model/emu_device_model.dart';
import 'package:portfolioapp_test/utils/linux_large_screen.dart';

List<EmuDeviceModel> emudevices = [
  EmuDeviceModel(
      data: CustomIconData(flutterIcon: Icons.android_sharp),
      device: Devices.android.samsungGalaxyS20),
  EmuDeviceModel(
      data: CustomIconData(flutterIcon: Icons.apple_sharp),
      device: Devices.ios.iPhoneSE),
  EmuDeviceModel(
      data: CustomIconData(fontAwesomeIcon: FontAwesomeIcons.linux),
      device: customLInuxTablet),
];

/*short explanation: Since I want to add linux icon which is not supported by flutterIcon pack
I had to make CustomIconData that can handle both packages for icons (flutterIcon,fontAwesomeIcon) 
*/


