import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, 0.8],
      colors: [
        Color(0xFF2e305F),
        Color(0xFF202333),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Purple Gradient
        Container(
          decoration: boxDecoration,
        ),

        //Pink box
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox(),
        )
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 490,
        height: 490,
        decoration: BoxDecoration(
          // color: Colors.pink,
          borderRadius: BorderRadius.circular(110),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ],
          ),
        ),
      ),
    );
  }
}
