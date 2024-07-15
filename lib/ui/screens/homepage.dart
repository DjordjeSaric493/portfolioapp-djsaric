import 'dart:async'; // Import for Timer
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp_test/state_mgmt_provider/theme_provider.dart';
import 'package:portfolioapp_test/ui/widgets/glassy_container.dart';
import 'package:portfolioapp_test/utils/data_constants/color_pickers_data.dart';
import 'package:provider/provider.dart';
import 'package:portfolioapp_test/model/emu_device_model.dart';
import 'package:portfolioapp_test/state_mgmt_provider/current_app_state_provider.dart';
import 'package:portfolioapp_test/utils/data_constants/emu_device_data.dart';
import 'package:portfolioapp_test/utils/phone_scr_wrap.dart';
import 'package:portfolioapp_test/ui/screens/phone_home_scr.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this import for URL launching

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Timer _timer;
  late String _timeString;

  @override
  void initState() {
    super.initState();
    _timeString = _formatDateTime(DateTime.now());
    _timer =
        Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _timeString = formattedDateTime;
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return "${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour}:${dateTime.minute}:${dateTime.second}";
  }

  Future<void> launchUrlInBrowser(String link) async {
    Uri url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      print("something messed up :(");
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeProvider theme = Provider.of<ThemeProvider>(context, listen: false);
    CurrentAppState currentAppState =
        Provider.of<CurrentAppState>(context, listen: false);
    Size size = MediaQuery.of(context).size; // size of device to get responsive
    //see theme_provider for detailed explanation
    theme.size = MediaQuery.of(context).size;
    theme.widthRatio = theme.size.width / baseWidth;
    theme.heightRatio = theme.size.height / baseHeight;
    //if it's smaller width I guess it's phone
    //in order to achieve responsiveness, I'll use this bool as a flag
    bool phone = false;
    if (size.width < 800) {
      phone = true;
    }

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            // Background gradient
            Selector<CurrentAppState, int>(
              selector: (context, provider) => provider.selectedButton,
              builder: (context, _, __) {
                return Container(
                  decoration: BoxDecoration(
                      gradient:
                          fancyColorPalette[currentAppState.selectedButton]
                              .gradient),
                );
              },
            ),
            // SVG Image overlay
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
            // Layout columns for left, middle (device frame), and right panels
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Left panel
                    // Conditionally renders an empty container on phones or a column on larger devices.
                    phone
                        ? Container()
                        : Column(
                            children: [
                              // Top left GlassyContainer with Flutter link
                              /* GlassyContainer(
                                width: 250,
                                height: 400,
                                childGrad: Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                    onTap: () => launchUrlInBrowser(
                                        'https://flutter.dev/'),
                                    child: SvgPicture.asset(
                                      'assets/images/flutterlogo.svg',
                                      width: 100, // Adjust the width as needed
                                      height:
                                          100, // Adjust the height as needed
                                      semanticsLabel: 'Flutter Logo',
                                    ),
                                  ),
                                ),
                              ),*/

                              const SizedBox(
                                height: 25,
                                width: 20,
                              ),
                              // Bottom left GlassyContainer with date and time display
                              GlassyContainer(
                                width: 245,
                                height: 200,
                                childGrad: Center(
                                  child: Text(
                                    _timeString,
                                    style: GoogleFonts.inter(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                    // Middle panel with device frame and screen
                    SizedBox(
                      height: size.height - 70,
                      child: Consumer<CurrentAppState>(
                        builder: (context, currentAppState, child) {
                          return DeviceFrame(
                            device: currentAppState.currentEmuDevice,
                            screen: Container(
                              decoration: BoxDecoration(
                                gradient: fancyColorPalette[
                                        currentAppState.selectedButton]
                                    .gradient,
                              ),
                              child: ScreenWrapper(
                                childG: currentAppState.currentScreen,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    // Right panel
                    phone
                        ? Container()
                        : //conditional rendering
                        Column(
                            children: [
                              // Upper right GlassyContainer
                              GlassyContainer(
                                width: 250,
                                height: 230,
                                childGrad: Center(
                                  child: Wrap(
                                    children: [
                                      // Custom buttons for gradient selection
                                      ...List.generate(
                                        fancyColorPalette.length,
                                        (index) => CustomButton(
                                          margin: EdgeInsets.all(11),
                                          onPressed: () {
                                            currentAppState
                                                .changeGradient(index);
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
                              const SizedBox(
                                height: 25,
                                width: 40,
                              ),
                              // Bottom right GlassyContainer
                              const GlassyContainer(
                                width: 245,
                                height: 200,
                              ),
                            ],
                          ),
                  ],
                ),
                const SizedBox(height: 10),
                // Row for device selection icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Generate icons for each device in emudevices
                    ...List.generate(
                      emudevices.length,
                      (index) => Consumer<CurrentAppState>(
                        builder: (context, currentAppState, child) {
                          return CustomButton(
                            onPressed: () {
                              currentAppState.changeSelectedEmuDevice(
                                emudevices[index].device,
                              );
                            },
                            height: 40,
                            width: 40,
                            borderRadius: 90,
                            animate: true,
                            pressed: currentAppState.currentEmuDevice ==
                                    emudevices[index].device
                                ? Pressed.pressed
                                : Pressed.notPressed,
                            shadowColor: Colors.white,
                            isThreeD: true,
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
