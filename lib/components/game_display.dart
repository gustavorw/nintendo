import 'package:flutter/material.dart';

class GameDisplay extends StatelessWidget {
  final double height;
  final double width;
  final Widget? child;
  const GameDisplay({
    Key? key,
    this.height = 300,
    this.width = 300,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: width * 0.02),
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(width * 0.03),
      ),
      child: child,
    );
  }
}
