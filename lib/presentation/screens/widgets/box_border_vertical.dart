import 'package:flutter/material.dart';

class BoxBorderVertical extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;

  const BoxBorderVertical({
    super.key,
    this.child,
    this.width, this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 50,
      height: height,
      decoration: BoxDecoration(
        border: Border.symmetric(
          vertical: BorderSide(
            color: Color(0xFF314158),
          ),
          
          horizontal: BorderSide(
            color: Color(0xFF314158),
          ),

        ),
      ),
      child: child,
    );
  }
}
