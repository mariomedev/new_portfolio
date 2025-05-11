import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/core.dart';

class Brackground extends ConsumerStatefulWidget {
  final Widget child;
  const Brackground({super.key, required this.child});

  @override
  ConsumerState<Brackground> createState() => _BrackgroundState();
}

class _BrackgroundState extends ConsumerState<Brackground>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Offset pointerOffset = ref.watch(offSetProvider); // Offset(0, 0);
    return MouseRegion(
      onHover: (event) {
        ref.read(offSetProvider.notifier).update((state) => event.position);
        setState(() {});
      },
      child: Scaffold(
        backgroundColor: ContanstColors.backgroudColor,
        body: Stack(
          children: [
            const Center(child: Text('Hola Mundo')),
            AnimatedPointer(
              pointerOffset: pointerOffset,
              radius: 40,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: const SizedBox(
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            AnimatedPointer(
              pointerOffset: pointerOffset,
              movementDuration: const Duration(milliseconds: 400),
              radius: 20,
            ),
            AnimatedPointer(
              pointerOffset: pointerOffset,
              movementDuration: const Duration(milliseconds: 400),
              radius: 19,
            ),
            AnimatedPointer(
              pointerOffset: pointerOffset,
              movementDuration: const Duration(milliseconds: 100),
              radius: 5,
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
      const Offset(0, 0),
      radius,
      Paint()
        ..color = const Color(0xFF00D5BE)
        ..blendMode = BlendMode.difference,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

final offSetProvider = StateProvider<Offset>((ref) {
  return const Offset(500, 500);
});
