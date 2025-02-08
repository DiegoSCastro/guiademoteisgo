import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/app.dart';

class DashedBorderContainer extends StatelessWidget {
  const DashedBorderContainer({
    required this.child,
    this.borderColor = AppColors.white,
    this.borderWidth = 1,
    this.dashWidth = 2,
    this.dashSpace = 2,
    super.key,
  });
  final Widget child;
  final Color borderColor;
  final double borderWidth;
  final double dashWidth;
  final double dashSpace;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedBorderPainter(
        color: borderColor,
        dashWidth: dashWidth,
        dashSpace: dashSpace,
        strokeWidth: borderWidth,
      ),
      child: Container(
        padding: const EdgeInsets.only(bottom: 2),
        child: child,
      ),
    );
  }
}

class DashedBorderPainter extends CustomPainter {
  DashedBorderPainter({
    required this.color,
    required this.dashWidth,
    required this.dashSpace,
    required this.strokeWidth,
  });
  final Color color;
  final double dashWidth;
  final double dashSpace;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height),
        Offset(startX + dashWidth, size.height),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
