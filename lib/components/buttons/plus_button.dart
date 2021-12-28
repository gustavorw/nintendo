import 'package:flutter/material.dart';

const linearGradient = LinearGradient(colors: [
  Color(0xff4A494E),
  Color(0xff525157),
]);

class PlusButton extends StatelessWidget {
  final double width;
  final double height;
  const PlusButton({
    Key? key,
    this.width = 150,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            gradient: linearGradient,
          ),
        ),
        Container(
          width: height,
          height: width,
          decoration: const BoxDecoration(
            gradient: linearGradient,
          ),
        )
      ],
    );
  }
}
