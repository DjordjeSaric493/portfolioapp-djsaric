import 'dart:ui';

import 'package:flutter/material.dart';

class GlassyContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget? childGrad;

  const GlassyContainer(
      //put required before super
      {
    super.key,
    this.height = 160,
    this.width = 210,
    this.childGrad,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(12), // Adjust border radius as needed
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: SizedBox(
                height: height,
                width: width,
              ),
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 1, 1, 8)
                      .withOpacity(0.5), // Border color
                  width: 5.5, // Border width
                ),
                borderRadius: BorderRadius.circular(
                    22), // Same border radius as ClipRRect
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.white.withOpacity(0.1),
                  ],
                ),
              ),
              child: childGrad,
            ),
          ],
        ),
      ),
    );
  }
}
