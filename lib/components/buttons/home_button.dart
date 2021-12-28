import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final double size;
  const HomeButton({Key? key, this.size = 100}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color(0xff8F8989),
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xff732A23),
          )),
      child: Container(
        width: size * 0.8,
        height: size * 0.8,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color(0xff333B3D),
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xff333B3D),
            )),
        child: Icon(
          Icons.home,
          size: size * 0.5,
        ),
      ),
    );
  }
}
