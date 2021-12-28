import 'package:flutter/material.dart';

enum SideType { left, right }

Alignment alignmentIconTop(SideType side) {
  switch (side) {
    case SideType.left:
      return Alignment.topLeft;

    case SideType.right:
      return Alignment.topRight;
  }
}

Alignment alignmentIconDown(SideType side) {
  switch (side) {
    case SideType.left:
      return Alignment.bottomLeft;

    case SideType.right:
      return Alignment.bottomRight;
  }
}

class Side extends StatelessWidget {
  final double height;
  final double width;
  final SideType sideType;
  final Widget? iconTop;
  final Widget? iconDown;
  final Widget first;
  final Widget second;
  const Side({
    Key? key,
    required this.height,
    required this.width,
    required this.first,
    required this.second,
    this.sideType = SideType.left,
    this.iconTop,
    this.iconDown,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = const Color(0xff00BDDD);
    var padding = EdgeInsets.only(left: width * 0.12);
    var borderRadius =
        BorderRadius.only(topRight: Radius.circular(width * 0.5));
    if (sideType == SideType.right) {
      color = const Color(0xffFF5F53);
      padding = EdgeInsets.only(right: width * 0.12);
      borderRadius = BorderRadius.only(topLeft: Radius.circular(width * 0.5));
    }
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: padding,
            child: Align(
              alignment: alignmentIconTop(sideType),
              child: iconTop,
            ),
          ),
          first,
          second,
          Padding(
            padding: padding,
            child: Align(
              alignment: alignmentIconDown(sideType),
              child: iconDown,
            ),
          ),
        ],
      ),
    );
  }
}
