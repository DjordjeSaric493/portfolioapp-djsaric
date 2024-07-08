import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp_test/state_mgmt_provider/current_app_state_provider.dart';
import 'package:portfolioapp_test/ui/screens/phone_home_scr.dart';
import 'package:provider/provider.dart';

class ScreenWrapper extends StatelessWidget {
  final Widget childG;

  /// Constructs a [ScreenWrapper] widget with [childG] as its child.
  const ScreenWrapper({Key? key, required this.childG}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CurrentAppState instance =
        Provider.of<CurrentAppState>(context, listen: false);

    return Column(
      children: [
        // AppBar container
        Consumer<CurrentAppState>(
          builder: (context, _, __) {
            if (!instance.isHomeScr) {
              return Container(
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.only(top: 30),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        instance.title ?? "",
                        style: GoogleFonts.inter(fontSize: 18),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          instance.changePhoneScreen(
                              const PhoneHomeScr(), true);
                        },
                      ),
                    ],
                  ),
                ),
              );
            }
            return Container(); // Empty container if not on the main screen
          },
        ),
        // Expanded child container
        Expanded(
          child: childG,
        ),
      ],
    );
  }
}
