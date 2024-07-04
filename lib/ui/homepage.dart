import 'package:flutter/material.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolioapp_test/utils/const.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //MediaQuery.of(context).size retrieves the size of the screen, Size is a class that holds the width and height of the screen
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    //The argument type '(MaterialColor, MaterialColor)' can't be assigned to the parameter type 'List<Color>'.
                    //to avoid this instead of colors: (Colors.blue,Colors.purple) use [] brackets bacuse it's a list
                    colors: [
                  Colors.blue,
                  Colors.purple
                ] //fixed, didn't take long to figure out
                    )),
          ),
          SvgPicture.asset(
            "assets/assets/images/Hexagon.svg",
            height: size.height,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //that nice looking simulating device on my page
              DeviceFrame(
                device: Devices.android.samsungGalaxyS20,
                screen: const Center(
                  child: Text(
                    'Jel radi ovo?',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
