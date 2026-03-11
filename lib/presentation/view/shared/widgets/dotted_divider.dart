import 'package:duty_doctor/app.dart';

class DottedDivider extends StatelessWidget {
  final Color color;
  final double thickness;
  final double dashLength;
  final double dashSpacing;

  const DottedDivider({
    super.key,
    this.color = Colors.black12,
    this.thickness = 0.6,
    this.dashLength = 10,
    this.dashSpacing = 10,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: thickness,
      width: double.infinity,
      child: CustomPaint(
        painter: _DashedDividerPainter(
          color: color,
          thickness: thickness,
          dashLength: dashLength,
          dashSpacing: dashSpacing,
        ),
      ),
    );
  }
}

class _DashedDividerPainter extends CustomPainter {
  final Color color;
  final double thickness;
  final double dashLength;
  final double dashSpacing;

  _DashedDividerPainter({
    required this.color,
    required this.thickness,
    required this.dashLength,
    required this.dashSpacing,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = thickness
      ..strokeCap = StrokeCap.round;

    final y = size.height / 2;
    double x = 0;

    while (x < size.width) {
      canvas.drawLine(Offset(x, y), Offset(x + dashLength, y), paint);
      x += dashLength + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(covariant _DashedDividerPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.thickness != thickness ||
        oldDelegate.dashLength != dashLength ||
        oldDelegate.dashSpacing != dashSpacing;
  }
}
