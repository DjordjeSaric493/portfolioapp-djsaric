import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

class CurrentAppState extends ChangeNotifier {
  DeviceInfo currentEmuDevice =
      Devices.android.samsungGalaxyS20; //remember device selection

  int selectedButton = 2;

  Gradient backgroundGradient = const LinearGradient(
      colors: [Colors.lightBlueAccent, Colors.black12],
      begin: Alignment.topLeft);

  void changeSelectedEmuDevice(DeviceInfo device) async {
    currentEmuDevice = device;
    notifyListeners();
  }

  void changeGradient(int index) {
    selectedButton = index;
    notifyListeners(); //it only took me 24 mins to figure out i forgot to write this
  }
}
