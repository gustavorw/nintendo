import 'package:flutter/material.dart';

class MinusButton extends StatelessWidget {
  final double height;
  final double width;
  const MinusButton({
    Key? key,
    this.height = 50,
    this.width = 150,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xff4A494E),
          Color(0xff525157),
        ],
      )),
    );
  }
}
