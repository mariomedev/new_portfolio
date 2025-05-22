import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonInfo extends StatefulWidget {
  final String title;
  final bool? arrowIsActive;
  final bool? isDawer;
  final bool? isSelected;
  final String? pathImage;
  final void Function()? onTap;

  const ButtonInfo({
    super.key,
    required this.title,
    this.isDawer = false,
    this.arrowIsActive = false,
    this.pathImage,
    this.onTap,
    this.isSelected = false,
  });

  @override
  State<ButtonInfo> createState() => _ButtonInfoState();
}

class _ButtonInfoState extends State<ButtonInfo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 20),
          if (widget.arrowIsActive!)
            Icon(
              widget.isSelected!
                  ? Icons.arrow_drop_down_rounded
                  : Icons.arrow_right,
              color: Colors.white,
            ),
          if (widget.pathImage != null)
            SvgPicture.asset(
              widget.pathImage!,
              height: 16,
              width: 16,
            ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              widget.title,
              style: GoogleFonts.firaCode(
                color: widget.isDawer!
                    ? (widget.isSelected!)
                        ? Colors.white
                        : const Color(0xFF90A1B9)
                    : const Color(0xFF90A1B9),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
