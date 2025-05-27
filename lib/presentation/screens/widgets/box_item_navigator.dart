import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxItemNavigator extends StatelessWidget {
  final String? title;
  final bool? isSelected;
  final Function()? onTap;
  final double? width;
  final String? imagePath;
  final IconData? icon;

  const BoxItemNavigator({
    super.key,
    this.title,
    this.isSelected = false,
    this.onTap,
    this.width,
    this.imagePath,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          height: double.infinity,
          width: width ?? 150,
          decoration: const BoxDecoration(
            border: Border.symmetric(
              vertical: BorderSide(color: Color(0xFF314158)),
            ),
          ),
          child: Column(
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (title != null)
                    Text(
                      title ?? '',
                      style: GoogleFonts.firaCode(
                        fontSize: 16,
                        color: const Color(0xFF90A1B9),
                      ),
                    ),
                  if (icon != null)
                    Icon(
                      icon,
                      color: const Color(0xFF90A1B9),
                    ),
                  if (imagePath != null && title != null)
                    const SizedBox(width: 10),
                  if (imagePath != null)
                    SvgPicture.asset(
                      imagePath!,
                      height: 24,
                      width: 24,
                    ),
                ],
              ),
              const Spacer(),
              Container(
                height: 3,
                color: isSelected! ? Colors.orange : Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
