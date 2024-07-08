import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HobbiesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My hobbies are:'),
        Row(
          children: [
            FaIcon(FontAwesomeIcons.guitar),
            SizedBox(width: 20),
            Text('Playing guitar'),
          ],
        ),
        Row(
          children: [
            FaIcon(FontAwesomeIcons.dumbbell),
            SizedBox(width: 14),
            Text('Working out at the gym'),
          ],
        ),
        Row(
          children: [
            FaIcon(FontAwesomeIcons.music),
            SizedBox(width: 20),
            Text('Going to concerts'),
          ],
        ),
        Row(
          children: [
            FaIcon(FontAwesomeIcons.book),
            SizedBox(width: 23),
            Text('Reading books'),
          ],
        ),
        Row(
          children: [
            FaIcon(FontAwesomeIcons.code),
            SizedBox(width: 14),
            Text('Coding'),
          ],
        ),
        Row(
          children: [
            FaIcon(FontAwesomeIcons.plane),
            SizedBox(width: 17),
            Text('Traveling'),
          ],
        ),
      ],
    );
  }
}
