import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolioapp_test/state_mgmt_provider/current_app_state_provider.dart';
import 'package:portfolioapp_test/utils/data_const.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // size of device to get responsive

    return Scaffold(
      body: Stack(
        children: [
          // That nice looking linear gradient in the background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [Colors.blue, Colors.black45],
              ),
            ),
          ),
          // After that we have .svg image on top of gradient
          SvgPicture.asset(
            "assets/images/cloudySea.svg",
            height: size.height,
            fit: BoxFit.cover,
          ),
          // On svg we added row with device frame and other stuff
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // 2 blank spaces and device are inside of this column
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height - 70,
                    // note to myself use provider inside of consumer widget
                    child: Consumer<CurrentAppState>(
                      builder: (context, currentAppState, child) {
                        return DeviceFrame(
                          device: currentAppState
                              .currentEmuDevice, // Show current device on UI
                          screen: const Center(
                            child: Text(
                              "Jel radi?",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 50),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                // Put icons inside a row
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Generate a list of CustomButton widgets for each item in emudevices, with onPressed callbacks
                  ...List.generate(
                    emudevices.length,
                    (index) => Consumer<CurrentAppState>(
                      builder: (context, currentAppState, child) {
                        return CustomButton(
                          // Expected behavior -> change device on pressing icon
                          onPressed: () {
                            currentAppState.changeSelectedEmuDevice(
                                emudevices[index].device);
                          },
                          height:
                              40, // To avoid assertion error while animate:true pass width and height
                          width: 40,
                          borderRadius: 90,
                          animate: true,
                          pressed: currentAppState.currentEmuDevice ==
                                  emudevices[index].device
                              ? Pressed.pressed
                              : Pressed.notPressed,
                          shadowColor: Colors.white,
                          isThreeD: true,
                          child: Center(
                            // List of emudevices data -> icons indexed
                            child: Icon(emudevices[index]
                                .data), // TODO: see utils data_const.dart
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
