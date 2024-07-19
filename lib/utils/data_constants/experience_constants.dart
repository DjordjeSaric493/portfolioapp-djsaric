import 'package:flutter/material.dart';
import 'package:portfolioapp_test/model/experience_model.dart';

final List<MyExperience> myExperiences = [
  MyExperience(
    color: Colors.redAccent,
    location: "Remote",
    title: 'Flutter Mentorship',
    company: 'private mentoring ',
    startDate: 'March 2024',
    endDate: 'July 2024',
    bulletPoints: [
      "Mentorship program focused on Flutter,creating an app with real-time group chats using Supabase.",
      "Utilized Provider and Streams for effective state management, ensuring a seamless user experience.",
      "Enhanced basics in Dart by learning and applying object-oriented programming (OOP) concepts.",
      "Engaged in daily meetings for continuous learning, actively preparing for a junior developer role",
    ],
  ),
  MyExperience(
    color: Colors.blue,
    location: "Remote",
    title: 'Flutter Internship',
    company: 'Credeo',
    startDate: 'July 2022.',
    endDate: 'Dec 2022',
    bulletPoints: [
      "Participated in the Credeo Summer Camp, gaining hands-on experience in software development.",
      "Task: writing unit and widget tests, creating basic UI.",
      "Secured my first internship, providing an invaluable opportunity to work in IT\nand express gratitude for experience.",
    ],
  ),
  MyExperience(
    color: Colors.green.shade600,
    location: "NTP Beograd/remote",
    title: 'Student Startup Co-Founder',
    company: 'SportUP/Taptivity',
    startDate: 'July 2021',
    endDate: 'May 2022',
    bulletPoints: [
      "Won startup competitions: ParkUP2021, Univerzum Accelerator 2021, Raising Stars 2022",
      "Engaged in pitching, mentorship sessions and business education, making my first contact with Flutter technology.",
      "Developed proof of concept, roles in development and team leading, monitoring team activities.",
    ],
  ),
  MyExperience(
    color: Colors.orange,
    location: "Faculty Of Organizational Sciences (FON)",
    title: 'Member of student organization',
    company: 'FONIS',
    startDate: 'Nov 2019',
    endDate: '∞',
    bulletPoints: [
      "Contributed to the design team for various projects\nused tools: Adobe Creative and SparkAR",
      "Conducted introductory lectures and workshops on Flutter for student members: 'Join The Dart Side'.",
      "Actively participated as a member of the HR and PR teams.",
      "Mentored new members, providing guidance and support.",
    ],
  ),
];
