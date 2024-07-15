import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp_test/state_mgmt_provider/current_app_state_provider.dart';
import 'package:portfolioapp_test/utils/data_constants/app_data.dart';
import 'package:portfolioapp_test/utils/data_constants/color_pickers_data.dart';
import 'package:provider/provider.dart';

class PhoneHomeScr extends StatelessWidget {
  const PhoneHomeScr({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentAppState currentAppState =
        Provider.of<CurrentAppState>(context, listen: false);
    return Container(
      padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
      child: Column(
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.start,
            children: List.generate(
              apps.length,
              (index) => Container(
                margin: const EdgeInsets.only(
                    right: 10,
                    top: 10,
                    bottom: 20,
                    left: 10), // Consistent margin
                child: Column(
                  children: [
                    CustomButton(
                      margin:
                          const EdgeInsets.only(bottom: 5), // Consistent margin
                      borderRadius: currentAppState.currentEmuDevice ==
                              Devices.android.samsungGalaxyS20
                          ? 8
                          : 100,
                      onPressed: () {
                        if (apps[index].link != null) {
                          // Open the URL in the browser
                          currentAppState.launchUrlInBrowser(apps[index].link!);
                        } else if (apps[index].screen != null) {
                          // Change the screen within the app
                          currentAppState.changePhoneScreen(
                              apps[index].screen!, false,
                              tit: apps[index].title);
                        }
                      },
                      width: 45, // Ensure consistent width
                      height: 45, // Ensure consistent height
                      backgroundColor: apps[index].color,
                      child: Center(
                        child: apps[index].iconData != null
                            ? apps[index].iconData!.flutterIcon != null
                                ? Icon(apps[index].iconData!.flutterIcon)
                                : FaIcon(apps[index].iconData!.fontAwesomeIcon)
                            : Container(),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                      child: Center(
                        child: Text(
                          apps[index].title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: GoogleFonts.openSansCondensed(
                              fontSize: 11,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
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
    );
  }
}
