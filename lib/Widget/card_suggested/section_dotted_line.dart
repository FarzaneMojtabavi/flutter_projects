import 'package:flutter/material.dart';

// ویجت جدا کننده برای رسم خط نقطه چین
class MySeparator extends StatelessWidget {
  const MySeparator({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, 1),
      painter: DottedLinePainter(color: color),
    );
  }
}
// CustomPainter برای رسم خط نقطه چین
class DottedLinePainter extends CustomPainter {
  final Color color;

  DottedLinePainter({this.color = const Color.fromARGB(255, 193, 201, 219)});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;

    final path = Path();
    double dashWidth = 6; 
    double spaceWidth = 5; 
    double startX = 0;

    while (startX < size.width) {
      path.moveTo(startX, 0);
      startX += dashWidth;
      path.lineTo(startX, 0);
      startX += spaceWidth;
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
