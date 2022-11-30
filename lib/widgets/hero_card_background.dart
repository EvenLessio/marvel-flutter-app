import 'package:flutter/material.dart';

class HeroCardBackground extends CustomPainter {
  final Color backgroundColor;

  HeroCardBackground({required this.backgroundColor});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    canvas.drawPath(
        Path()
          ..moveTo(size.width, size.height / 2)
          ..lineTo(0, size.height)
          ..lineTo(size.width, size.height),
        paint);
  }

  @override
  bool shouldRepaint(covariant HeroCardBackground oldDelegate) {
    return backgroundColor != oldDelegate.backgroundColor;
  }
}
