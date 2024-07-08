import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:portfolioapp_test/ui/screens/phone_home_scr.dart';
import 'package:url_launcher/url_launcher.dart';

class CurrentAppState extends ChangeNotifier {
  DeviceInfo currentEmuDevice =
      Devices.android.samsungGalaxyS20; // Remember device selection

  int selectedButton = 2;

  Gradient backgroundGradient = const LinearGradient(
      colors: [Colors.lightBlueAccent, Colors.black12],
      begin: Alignment.topLeft);

  bool isHomeScr = true;
  String? title;

  Widget currentScreen = const PhoneHomeScr();

  void changeSelectedEmuDevice(DeviceInfo device) async {
    currentEmuDevice = device;
    notifyListeners();
  }

  void changeGradient(int index) {
    selectedButton = index;
    notifyListeners();
  }

  Future<void> launchUrlInBrowser(String link) async {
    Uri url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      print("something messed up :(");
    }
  }

  void changePhoneScreen(Widget change, bool isMain, {String? titlee}) {
    title = titlee;
    currentScreen = change;
    isHomeScr = isMain; // Ensure this line correctly assigns the value
    notifyListeners();
  }
}
