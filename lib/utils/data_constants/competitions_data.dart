import 'package:flutter/material.dart';
import 'package:portfolioapp_test/model/competitions_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

final List<MyCompetition> myCompetitions = [
  MyCompetition(
    title: "Raising Starts 2022",
    organization: "Startup Competition",
    date: "July 2021",
    bulletPoints: [
      TextSpan(
        text: "One of selected teams to pass further ",
      ),
      TextSpan(
        text: "Raising Starts 2.0",
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            launchUrlInBrowser(
                'https://ntpark.rs/en/2022/05/09/selected-startups-to-participate-in-phase-2-of-the-raising-starts-2-0-program/');
          },
      ),
      TextSpan(
        text:
            ". Mentorships, connecting with staartups, working further on prototype,tracking progress.",
      ),
      TextSpan(
        text:
            " This was a peak moment for our student startup, eternally grateful to NTP Beograd for this amazing ride.",
      ),
    ],
    location: "Belgrade, Serbia",
    color: Colors.blueAccent,
  ),
  MyCompetition(
    title: "Univerzum 2021",
    organization: "Startup Competition",
    date: "2021",
    bulletPoints: [
      TextSpan(
        text: "Won 2.5k eur grant and mentorship ",
      ),
      TextSpan(
        text: "Univerzum Akcelerator",
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            launchUrlInBrowser(
                'https://nova.rs/vesti/biznis/citav-univerzum-novih-ideja-50-strucnjaka-podrzalo-startap-akcelerator/');
          },
      ),
      TextSpan(
        text:
            "Continued mentorships, working on proof of concept, analysing market. ",
      ),
      TextSpan(
        text: "Very valuable experience for professional and personal growth",
      ),
    ],
    location: "Belgrade, Serbia",
    color: Colors.orange,
  ),
  MyCompetition(
    title: "ParkUP2021",
    organization: "Student Startup Competition",
    date: "July 2021",
    bulletPoints: [
      TextSpan(
        text: "Won the student startup competition ",
      ),
      TextSpan(
        text: "ParkUP2021",
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            launchUrlInBrowser(
                'https://brainz.center/tim-sportup-trijumfovao-u-studenstkom-startap-kampu-parkup/');
          },
      ),
      TextSpan(
        text:
            ". My roles included development and team leading, monitoring team activities, project management, developing MVP using Google Maps and Firebase, pitching, mentorship sessions, and business education.",
      ),
      TextSpan(
        text:
            " This was a pivotal moment in my career development and my first contact with Flutter technology.",
      ),
    ],
    location: "Belgrade, Serbia",
    color: Colors.blueAccent,
  ),
  // Add more competitions as needed
];

Future<void> launchUrlInBrowser(String link) async {
  Uri url = Uri.parse(link);
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    print("something messed up :(");
  }
}
