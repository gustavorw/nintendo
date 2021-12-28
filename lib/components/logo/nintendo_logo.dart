import 'package:flutter/material.dart';

class NintendoLogo extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  const NintendoLogo({
    Key? key,
    required this.height,
    required this.width,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: NintendoPath(),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(width * 0.25),
          ),
        ));
  }
}

class NintendoPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // tem que desenhar uma mascara antes
    var path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      // retangulo com radius
      ..addRRect(RRect.fromRectAndCorners(
        Rect.fromLTRB(size.width * 0.08, size.height * 0.09, size.width * 0.39,
            size.height * 0.91),
        topLeft: Radius.circular(size.width * 0.18),
        bottomLeft: Radius.circular(size.width * 0.18),
      )) // bola de dentro do retangulo
      ..addOval(Rect.fromCircle(
          center: Offset(size.width * 0.25, size.height * 0.29),
          radius: size.width * 0.1))
      // retangulo do meio
      ..addRect(Rect.fromCenter(
          center: Offset(size.width / 2, size.height / 2),
          width: size.width * 0.1,
          height: size.height))
      ..addOval(Rect.fromCircle(
          center: Offset(size.width * 0.78, size.height * 0.55),
          radius: size.width * 0.1));

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return this != oldClipper;
  }
}
