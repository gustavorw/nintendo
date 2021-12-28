import 'package:flutter/material.dart';

class SoundButton extends StatelessWidget {
  final double size;
  const SoundButton({Key? key, this.size = 100}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xff7B8287),
        Color(0xff324144),
      ])),
      child: Container(
        width: size * 0.82,
        height: size * 0.82,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff4A494E),
          Color(0xff525157),
        ])),
        child: Container(
          width: size * 0.6,
          height: size * 0.6,
          decoration: const BoxDecoration(
              color: Color(0xff182022), shape: BoxShape.circle),
        ),
      ),
    );
  }
}
