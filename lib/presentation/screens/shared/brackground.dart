import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/core.dart';

class Brackground extends StatefulWidget {
  final Widget child;
  const Brackground({super.key, required this.child});

  @override
  State<Brackground> createState() => _BrackgroundState();
}

class _BrackgroundState extends State<Brackground>
    with SingleTickerProviderStateMixin {
  Offset pointerOffset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        pointerOffset = event.position;
        setState(() {});
      },
      child: Scaffold(
        backgroundColor: ContanstColors.backgroudColor,
        body: Stack(
          children: [
            Center(child: Text('Hola Mundo')),

            AnimatedPointer(pointerOffset: pointerOffset, radius: 45),
            AnimatedPointer(
              pointerOffset: pointerOffset,
              movementDuration: const Duration(milliseconds: 200),
              radius: 5,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.transparent,
              ),
            ),

            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: widget.child,
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedPointer extends StatelessWidget {
  final Duration movementDuration;
  final Offset pointerOffset;
  final double radius;

  const AnimatedPointer({
    super.key,
    required this.pointerOffset,
    this.movementDuration = const Duration(milliseconds: 700),
    this.radius = 30,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: movementDuration,
      curve: Curves.easeOutExpo,
      top: pointerOffset.dy,
      left: pointerOffset.dx,
      child: CustomPaint(painter: Pointer(radius)),
    );
  }
}

class Pointer extends CustomPainter {
  final double radius;

  Pointer(this.radius);
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      Offset(0, 0),
      radius,
      Paint()
        ..color = Color(0xFF00D5BE)
        ..blendMode = BlendMode.difference,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
