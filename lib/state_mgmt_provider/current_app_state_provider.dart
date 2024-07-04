import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

class CurrentAppState extends ChangeNotifier {
  DeviceInfo currentEmuDevice = Devices.android.samsungGalaxyS20;

  void changeSelectedEmuDevice(DeviceInfo device) {
    currentEmuDevice = device;

    notifyListeners();
  }
}
