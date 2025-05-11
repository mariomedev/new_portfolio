import 'package:flutter/material.dart';

class BoxBorderHorizontal extends StatelessWidget {
  final double? height;
  final Widget? child;
  const BoxBorderHorizontal({
    super.key,
    this.child,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Color(0xFF314158),
          ),
        ),
      ),
      child: child,
    );
  }
}
