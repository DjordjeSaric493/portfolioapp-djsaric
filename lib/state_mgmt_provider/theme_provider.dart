
import 'package:flutter/material.dart';
class ThemeProvider extends ChangeNotifier {
  late BuildContext context;
  late Size size;
  late double heightRatio = size.height / baseHeight;
  late double widthRatio = size.width / baseWidth;
}

const double baseHeight = 790;
const double baseWidth = 1440;

/*Explanation (cgpt) 
const double baseHeight = 790;:

This constant represents a reference height in pixels. 
It serves as the baseline to calculate how UI elements should scale on different screen sizes.
By using this value, you can determine the height ratio of the current device's height to this base height, 
which helps in maintaining consistency in UI layout across various screen sizes.

const double baseWidth = 1440;:

This constant represents a reference width in pixels. Similar to baseHeight, 
it acts as a baseline for calculating responsive design.
It allows you to determine the width ratio of the current device's width to
 this base width, facilitating consistent scaling of UI components
 across different devices.*/