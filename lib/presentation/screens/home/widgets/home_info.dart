import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.firaCode();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Hi all. I am',
          style: textStyle.copyWith(
            fontSize: 20,
            color: Color(0xFF90A1B9),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Mario Melo',
          style: textStyle.copyWith(
            fontSize: 80,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          '> Flutter Developer',
          style: textStyle.copyWith(
            fontSize: 40,
            color: Color(0xFF615FFF),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 40),
        Text(
          '// complete the game to continue',
          style: textStyle.copyWith(
            fontSize: 20,
            color: Color(0xFF90A1B9),
          ),
        ),
        Text(
          '// find my profile on Github:',
          style: textStyle.copyWith(
            fontSize: 20,
            color: Color(0xFF90A1B9),
          ),
        ),
        Row(
          spacing: 5,
          children: [
            Text(
              'Const',
              style: textStyle.copyWith(
                fontSize: 20,
                color: Color(0xFF615FFF),
              ),
            ),
            Text(
              'githubLink',
              style: textStyle.copyWith(
                fontSize: 20,
                color: Color(0xFF00D5BE),
              ),
            ),
            Text(
              '=',
              style: textStyle.copyWith(fontSize: 20, color: Colors.white),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onDoubleTap: () {},
                child: Text(
                  '\'https://github.com/mariomedev\'',
                  style: textStyle.copyWith(
                      fontSize: 20, color: Color(0xFFFFA1AD)),
                ),
              ),
            ),
            Text(
              ';',
              style: textStyle.copyWith(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
