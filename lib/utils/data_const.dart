import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:portfolioapp_test/model/emu_device_model.dart';

List<EmuDeviceModel> emudevices = [
  EmuDeviceModel(
      data: Icons.android_sharp, device: Devices.android.samsungGalaxyS20),
  EmuDeviceModel(data: Icons.apple_sharp, device: Devices.ios.iPhoneSE),
  EmuDeviceModel(data: Icons.window_sharp, device: Devices.windows.wideMonitor),
];
