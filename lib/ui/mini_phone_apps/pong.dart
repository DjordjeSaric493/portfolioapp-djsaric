import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class PongGame extends StatefulWidget {
  @override
  _PongGameState createState() => _PongGameState();
}

class _PongGameState extends State<PongGame>
    with SingleTickerProviderStateMixin {
  double ballX = 0;
  double ballY = 0;
  double ballXDirection = 1;
  double ballYDirection = 1;
  double playerX = 0;
  double playerWidth = 0.2;

  late Animation<double> animation;
  late AnimationController controller;

  void startGame() {
    controller = AnimationController(
      duration: const Duration(hours: 5),
      vsync: this,
    );

    animation = Tween<double>(begin: 0, end: 1).animate(controller)
      ..addListener(() {
        setState(() {
          ballX += ballXDirection * 0.01;
          ballY += ballYDirection * 0.01;

          if (ballX >= 1 || ballX <= -1) {
            ballXDirection = -ballXDirection;
          }

          if (ballY >= 1 || ballY <= -1) {
            ballYDirection = -ballYDirection;
          }

          if (ballY >= 0.9 &&
              (ballX >= playerX && ballX <= playerX + playerWidth)) {
            ballYDirection = -ballYDirection;
          }
        });
      });

    controller.forward();
  }

  @override
  void initState() {
    super.initState();
    startGame();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void moveLeft() {
    setState(() {
      playerX -= 0.1;
      if (playerX < -1) playerX = -1;
    });
  }

  void moveRight() {
    setState(() {
      playerX += 0.1;
      if (playerX > 1 - playerWidth) playerX = 1 - playerWidth;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: Stack(
            children: [
              Align(
                alignment: Alignment(ballX, ballY),
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(playerX, 0.9),
                child: Container(
                  width: MediaQuery.of(context).size.width * playerWidth,
                  height: 20,
                  color: Colors.blue,
                ),
              ),
              Align(
                alignment: Alignment(-0.9, 0.9),
                child: IconButton(
                  icon: Icon(Icons.arrow_left),
                  onPressed: moveLeft,
                ),
              ),
              Align(
                alignment: Alignment(0.9, 0.9),
                child: IconButton(
                  icon: Icon(Icons.arrow_right),
                  onPressed: moveRight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
