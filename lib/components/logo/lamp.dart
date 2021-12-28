import 'package:flutter/material.dart';

enum LampMode { on, off }

Color color(LampMode mode) {
  switch (mode) {
    case LampMode.on:
      return const Color(0xffB6EBA5);
    case LampMode.off:
      return const Color(0xff222327);
  }
}

class Lamp extends StatelessWidget {
  final double size;
  final LampMode lampMode;
  const Lamp({
    Key? key,
    required this.size,
    this.lampMode = LampMode.off,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color(lampMode),
        shape: BoxShape.circle,
      ),
    );
  }
}
