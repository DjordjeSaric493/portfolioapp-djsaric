import 'dart:ui';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp_test/model/emu_device_model.dart';
import 'package:portfolioapp_test/state_mgmt_provider/current_app_state_provider.dart';
import 'package:portfolioapp_test/ui/widgets/glassy_container.dart';
import 'package:portfolioapp_test/utils/data_constants/app_data.dart';
import 'package:portfolioapp_test/utils/data_constants/color_pickers_data.dart';
import 'package:portfolioapp_test/utils/data_constants/emu_device_data.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentAppState currentAppState =
        Provider.of<CurrentAppState>(context, listen: false);
    Size size = MediaQuery.of(context).size; // size of device to get responsive
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Selector<CurrentAppState, int>(
              selector: (context, provider) => provider.selectedButton,
              builder: (context, _, __) {
                return // That nice looking linear gradient in the background
                    Container(
                  decoration: BoxDecoration(
                      gradient:
                          fancyColorPalette[currentAppState.selectedButton]
                              .gradient),
                );
              },
            ),
            Selector<CurrentAppState, int>(
              selector: (context, provider) => provider.selectedButton,
              builder: (context, _, __) {
                return SvgPicture.asset(
                  fancyColorPalette[currentAppState.selectedButton].svgImgPath,
                  height: size.height,
                  fit: BoxFit.cover,
                );
              },
            ),
            // After that we have .svg image on top of gradient

            // On svg we added row with device frame and other stuff
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // 2 blank spaces and device are inside of this column
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //LEFT
                    const Column(
                      children: [
                        //top left
                        GlassyContainer(
                          width: 250,
                          height: 400,
                        ),
                        SizedBox(
                          height: 25,
                          width: 20,
                        ),
                        //bottomleft
                        GlassyContainer(
                          width: 245,
                          height: 200,
                        ),
                      ],
                    ),
                    //MIDDLE
                    SizedBox(
                      height: size.height - 70,
                      // note to myself use provider inside of consumer widget
                      child: Consumer<CurrentAppState>(
                        builder: (context, currentAppState, child) {
                          return DeviceFrame(
                              device: currentAppState
                                  .currentEmuDevice, // Show current device on UI
                              screen: Container(
                                decoration: BoxDecoration(
                                  gradient: fancyColorPalette[
                                          currentAppState.selectedButton]
                                      .gradient,
                                ),
                                child: Wrap(
                                  spacing:
                                      16.0, // horizontal space between buttons
                                  runSpacing:
                                      16.0, // vertical space between buttons
                                  alignment: WrapAlignment.center,
                                  children: [
                                    ...List.generate(
                                      apps.length,
                                      (index) => Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            right: 12,
                                            left: 12,
                                            top: 32,
                                            bottom: 12,
                                          ),
                                          child: Column(
                                            children: [
                                              CustomButton(
                                                //TODO:button press lgic
                                                onPressed: () {},
                                                width: 50,
                                                height: 50,
                                                backgroundColor:
                                                    apps[index].color,
                                                child: Center(
                                                  child: apps[index].iconData !=
                                                          null
                                                      ? apps[index]
                                                                  .iconData!
                                                                  .flutterIcon !=
                                                              null
                                                          ? Icon(apps[index]
                                                              .iconData!
                                                              .flutterIcon)
                                                          : FaIcon(apps[index]
                                                              .iconData!
                                                              .fontAwesomeIcon)
                                                      : Container(),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 70,
                                                child: Center(
                                                  child: Text(
                                                    apps[index].title,
                                                    overflow: TextOverflow.fade,
                                                    maxLines: 1,
                                                    style: GoogleFonts
                                                        .openSansCondensed(
                                                            fontSize: 11,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                        },
                      ),
                    ),
                    //RIGHT
                    Column(
                      children: [
                        //UPPER RIGHT
                        GlassyContainer(
                          width: 250,
                          height: 230,
                          childGrad: Center(
                            //center these BUTT-ons lol
                            child: Wrap(
                              //to achieve responsivity,
                              children: [
                                ...List.generate(
                                  fancyColorPalette.length,
                                  (index) => CustomButton(
                                    margin: EdgeInsets.all(11),

                                    //button press logic
                                    onPressed: () {
                                      currentAppState.changeGradient(index);
                                    },
                                    animate: true,
                                    isThreeD: true,
                                    borderRadius: 80,
                                    height: 60,
                                    width: 60,
                                    shadowColor: Colors.black,
                                    backgroundColor:
                                        fancyColorPalette[index].color,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                          width: 40,
                        ),
                        GlassyContainer(
                          width: 245,
                          height: 200,
                        ),
                      ],
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
                                emudevices[index].device,
                              );
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
                            // Here makes conditional if its icon from flutterIcon or FontAwesome
                            child: emudevices[index].data.flutterIcon != null
                                ? Icon(emudevices[index].data.flutterIcon)
                                : FaIcon(
                                    emudevices[index].data.fontAwesomeIcon),
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
      ),
    );
  }
}
