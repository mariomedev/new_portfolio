import 'package:flutter/material.dart';

class HomeShadow extends StatelessWidget {
  final double? rotationZ;
  final Color? color;
  const HomeShadow({
    super.key,
    this.rotationZ,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.rotationZ(rotationZ ?? 0.0),
      width: 100,
      height: 500,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: color ?? Color(0xFF00D5BE),
            blurRadius: 300,
            spreadRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}