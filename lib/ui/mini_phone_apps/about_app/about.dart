import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp_test/ui/widgets/hobbies_widget.dart';
import 'package:portfolioapp_test/utils/data_constants/app_data.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  double opacity = 0;

  @override
  void initState() {
    super.initState();
    changeOpacity();
  }

  changeOpacity() async {
    await Future.delayed(const Duration(milliseconds: 50));
    opacity = 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 245, 227),
                borderRadius: BorderRadius.circular(15)),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Image(
                    image: AssetImage('assets/images/DjordjeProfile.png'),
                    width: 160,
                    height: 160,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    "Hello, I am Djordje Saric.\n",
                    style: GoogleFonts.openSans(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  introText,
                  style: GoogleFonts.openSans(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ).animate().show(duration: const Duration(milliseconds: 700)),
                const SizedBox(height: 20),
                HobbiesWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
