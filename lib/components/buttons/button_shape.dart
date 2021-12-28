import 'package:flutter/material.dart';

enum ButtonShapeGradientLinearType { angle180, angle270 }

LinearGradient _linearGradientExtern(ButtonShapeGradientLinearType type) {
  switch (type) {
    case ButtonShapeGradientLinearType.angle180:
      return const LinearGradient(
        begin: Alignment.center,
        colors: [
          Color(0xff7B8287),
          Color(0xff050F11),
        ],
      );

    case ButtonShapeGradientLinearType.angle270:
      return const LinearGradient(
        end: Alignment.topLeft,
        begin: Alignment.bottomRight,
        colors: [
          Color(0xff7B8287),
          Color(0xff050F11),
        ],
      );
  }
}

LinearGradient _linearGradientIntern(ButtonShapeGradientLinearType type) {
  switch (type) {
    case ButtonShapeGradientLinearType.angle180:
      return const LinearGradient(
        begin: Alignment.center,
        colors: [
          Color(0xff686D70),
          Color(0xff050F11),
        ],
      );

    case ButtonShapeGradientLinearType.angle270:
      return const LinearGradient(
        begin: Alignment.bottomLeft,
        colors: [
          Color(0xff686D70),
          Color(0xff050F11),
        ],
      );
  }
}

class ButtonShape extends StatelessWidget {
  final Widget? child;
  final ButtonShapeGradientLinearType type;
  const ButtonShape(
      {Key? key,
      required this.child,
      this.type = ButtonShapeGradientLinearType.angle180})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    late LinearGradient linearExtern = _linearGradientExtern(type);
    late LinearGradient linearIntern = _linearGradientIntern(type);

    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: linearExtern,
        ),
        child: Container(
          height: constraints.maxHeight * 0.78,
          width: constraints.maxWidth * 0.78,
          alignment: Alignment.center,
          child: child,
          decoration: BoxDecoration(
            gradient: linearIntern,
            shape: BoxShape.circle,
          ),
        ),
      );
    });
  }
}
