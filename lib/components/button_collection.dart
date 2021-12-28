import 'package:flutter/material.dart';

class ButtonCollection extends StatelessWidget {
  final double size;
  final Widget top;
  final Widget left;
  final Widget right;
  final Widget down;
  const ButtonCollection({
    Key? key,
    required this.size,
    required this.top,
    required this.left,
    required this.right,
    required this.down,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size,
        height: size,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: size * 0.32,
                  width: size * 0.32,
                  child: top,
                ),
                SizedBox(
                  height: size * 0.32,
                  width: size * 0.32,
                  child: down,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: size * 0.32,
                  width: size * 0.32,
                  child: left,
                ),
                SizedBox(
                  height: size * 0.32,
                  width: size * 0.32,
                  child: right,
                ),
              ],
            )
          ],
        ));
  }
}
