import 'package:flutter/material.dart';

enum DirectionRotation { right, down, left, top }

class DigitalDirectionalButton extends StatelessWidget {
  final double size;

  final DirectionRotation directionRotation;
  const DigitalDirectionalButton({
    Key? key,
    this.size = 200,
    this.directionRotation = DirectionRotation.top,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return RotatedBox(
        quarterTurns: directionRotation.index,
        child: Icon(
          Icons.play_arrow,
          size: constraints.maxWidth * 0.7,
        ),
      );
    });
  }
}
