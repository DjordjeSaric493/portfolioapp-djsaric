import 'package:flutter/material.dart';
import 'package:portfolioapp_test/model/edu_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

final List<MyEdu> myEdu = [
  MyEdu(
    title: "Undergraduate in Computer Science",
    school: "University of Belgrade- FON",
    startDate: "2019",
    endDate: "expected 2025",
    bulletPoints: [
      TextSpan(
        text:
            "Enrolled in this faculty after one semester at the Faculty of Mechanical Engineering, where I participated in a business case competition and secured 2nd place.",
      ),
      TextSpan(
        text:
            "Realized my potential to become a manager, leading to my decision to switch faculties and pursue a career as an app developer.",
      ),
      TextSpan(
        text:
            "Won multiple competitions and formed lifelong friendships and connections through the student organization ",
        children: [
          TextSpan(
            text: "FONIS",
            style: TextStyle(
                color: Colors.blue, decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrlInBrowser('https://www.fonis.rs');
              },
          ),
          TextSpan(text: "."),
        ],
      ),
      TextSpan(
        text:
            "Faced health challenges that caused a two-year hiatus from studies, but I resumed my education at the end of last year and am now actively passing exams to complete my degree.",
      ),
    ],
    location: "Belgrade, Serbia",
    color: Colors.blue,
  ),
  MyEdu(
    title: "High School Student",
    school: "Gymnasium Mladenovac",
    startDate: "2014",
    endDate: "2018",
    bulletPoints: [
      TextSpan(
        text:
            "Class for Sciences, school backetball team, school orchestra (guitar,piano)",
      ),
      TextSpan(
        text: "Primary Musical School (guitar,therory of music).",
      ),
    ],
    location: "Mladenovac, Serbia",
    color: Colors.blue,
  ),
];

Future<void> launchUrlInBrowser(String link) async {
  Uri url = Uri.parse(link);
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    print("something messed up :(");
  }
}
