import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BigButton extends StatelessWidget {
  final double size;
  const BigButton({Key? key, this.size = 300}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          colors: [
            Color(0xff676A6F),
            Color(0xff242625),
          ],
        ),
        border: Border.all(width: size * 0.017),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight * 0.81,
          width: constraints.maxHeight * 0.81,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              colors: [
                Color(0xff676A6F),
                Color(0xff242625),
              ],
            ),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            return Container(
              height: constraints.maxHeight * 0.91,
              width: constraints.maxHeight * 0.91,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: constraints.maxHeight * 0.023),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff676A6F),
                    Color(0xff242625),
                  ],
                ),
              ),
            );
          }),
        );
      }),
    );
  }
}
