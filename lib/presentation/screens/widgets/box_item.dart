import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxItem extends StatelessWidget {
  final String title;
  final double? width;

  const BoxItem({super.key, required this.title, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: width ?? 300,
      decoration: BoxDecoration(
        border: Border.symmetric(
          vertical: BorderSide(color: Color(0xFF314158)),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.firaCode(fontSize: 16, color: Color(0xFF90A1B9)),
        ),
      ),
    );
  }
}
