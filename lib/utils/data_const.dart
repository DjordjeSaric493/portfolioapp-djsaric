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

//
List<ColorsModel> fancyColorPalette = [
  //don't forget to import flutter_material.dart in ColorsModel
  ColorsModel(
    color: const Color.fromARGB(255, 76, 119, 175), //icon color
    gradient: const LinearGradient(colors: [
      Color.fromARGB(255, 76, 119, 175),
      const Color.fromARGB(255, 0, 204, 255)
    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
    svgImgPath: 'assets/images/iManifestSea.svg',
  ),
  ColorsModel(
    color: Colors.redAccent,
    gradient: const LinearGradient(
        colors: [Colors.redAccent, Colors.orange],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight),
    svgImgPath: 'assets/images/iManifestSea.svg',
  ),
  ColorsModel(
    color: const Color.fromARGB(255, 153, 1, 173),
    gradient: const LinearGradient(colors: [
      Color.fromARGB(255, 153, 1, 173),
      Color.fromARGB(255, 130, 90, 204)
    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
    svgImgPath: 'assets/images/iManifestSea.svg',
  ),
  ColorsModel(
    color: const Color.fromARGB(255, 1, 33, 173),
    gradient: const LinearGradient(colors: [
      Color.fromARGB(255, 1, 33, 173),
      Color.fromARGB(255, 32, 64, 209),
    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
    svgImgPath: 'assets/images/iManifestSea.svg',
  ),
];
