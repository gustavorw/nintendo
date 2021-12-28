import 'package:flutter/material.dart';
import 'package:nintendo/components/logo/lamp.dart';

class MiddleWidgets extends StatelessWidget {
  final double size;
  final double width;
  final Widget logo;
  const MiddleWidgets({
    Key? key,
    required this.size,
    required this.width,
    required this.logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Lamp(size: size * 0.12, lampMode: LampMode.on),
              Lamp(size: size * 0.12),
              Lamp(size: size * 0.12),
              Lamp(size: size * 0.12),
            ],
          ),
          logo,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Lamp(size: size * 0.12),
              Lamp(size: size * 0.12),
              Lamp(size: size * 0.12),
              Lamp(size: size * 0.12),
            ],
          )
        ],
      ),
    );
  }
}
