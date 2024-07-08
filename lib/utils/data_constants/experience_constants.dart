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
      "Participated in a mentorship program focused on Flutter development using Ubuntu,creating a chat app with real-time group chats via Supabase and a simple music player.",
      "Utilized Provider and Streams for effective state management, ensuring a seamless user experience",
      "Enhanced basics in Dart by learning and applying object-oriented programming (OOP) concepts.",
      "Engaged in daily meetings for continuous learning, actively preparing for a junior developer role by applying new skills in practical projects.",
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
      "Participated in the Credeo Summer Camp, gaining hands-on experience in software development and honing technical skills.",
      "Task: writing unit and widget tests, ensuring code quality and reliability through comprehensive testing practices",
      "Secured my first internship, providing an invaluable opportunity to work in IT and express gratitude for the foundational experience.",
    ],
  ),
  MyExperience(
    color: Colors.green.shade600,
    location: "NTP Beograd/remote",
    title: 'Student Startup Co-Founder',
    company: 'SportUP',
    startDate: 'July 2021',
    endDate: 'May 2022',
    bulletPoints: [
      "Won the student startup competition ParkUP2021, followed by success in Univerzum Accelerator 2021 and Raising Stars 2022, marking pivotal moments in my career development.",
      "Engaged in pitching, mentorship sessions, and business education, making my first contact with Flutter technology and solidifying my interest in the field.",
      "Developed proof of concept using Google Maps and Firebase.Assumed roles in development and team leading,effectively monitoring team activities and managing projects to ensure successful outcomes.",
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
      "Contributed to the design team for various projects, playing a notable role in crafting visually appealing and user-centric designs",
      "Actively participated as a member of the HR and PR teams, leveraging interpersonal skills to foster a positive and collaborative environment.",
      "Conducted introductory lectures on Flutter for student members, sharing knowledge and igniting interest in mobile app development.",
      "Mentored new members, providing guidance and support while gaining valuable experience in programming and project management.",
    ],
  ),
];
