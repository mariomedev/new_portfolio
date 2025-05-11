import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets.dart';

class FileOpen extends StatelessWidget {
  final String title;
  const FileOpen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return BoxBorderHorizontal(
      height: 50,
      child: Row(
        children: [
          BoxBorderVertical(
            width: 250,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    title,
                    style: GoogleFonts.firaCode(
                        color: const Color(0xFF90A1B9), fontSize: 16),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.close_sharp,
                    color: Color(0xFF90A1B9),
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
