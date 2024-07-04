import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //size of device to get responsive
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              //that nice looking linear gradient in the background
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [
                  Colors.blue,
                  Colors.black45
                ], //[] it's a list '(MaterialColor, Color)' can't be assigned to a parameter of type 'List<Color>'
              )),
            ),
            SvgPicture.asset(
              "assets/images/cloudySea.svg",
              height: size.height,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //that nice looking samsung S something
                DeviceFrame(
                  device: Devices.android.samsungGalaxyS20,
                  screen: const Center(
                    child: Text(
                      "Jel radi?",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
